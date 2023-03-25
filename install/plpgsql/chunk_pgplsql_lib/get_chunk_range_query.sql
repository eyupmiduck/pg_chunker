CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.get_chunk_range_query(
    i_driving_schema_name       IN  VARCHAR,
    i_driving_table_name        IN  VARCHAR,
    i_pk_columns                IN  VARCHAR[],
    i_pk_types                  IN  VARCHAR[],
    i_log_level                 IN  INTEGER,
    i_chunk_size                IN  INTEGER,
    o_insert_chunks_statement   OUT VARCHAR
)
LANGUAGE plpgsql
AS $$
DECLARE
    l_chunk_boundry_key_cols    VARCHAR(4000);
    l_chunk_boundry_key_col     INTEGER;
BEGIN
    o_insert_chunks_statement :=
        '   INSERT INTO chunk_data.chunk_boundry(chunk_run_id, chunk_number, <chunk_boundry_key_cols>)
            SELECT $1, ROW_NUMBER() OVER (ORDER BY <key_cols>) row_num, <key_cols>
            FROM (
                SELECT <key_cols>, q_row_num.row_num, LAST_VALUE(q_row_num.row_num) OVER() last_val
                FROM (
                    SELECT <key_cols>, ROW_NUMBER() OVER (ORDER BY <key_cols>) row_num
                    FROM <qualified_table_name>) q_row_num
                ) q_last_value
            WHERE MOD(q_last_value.row_num, <chunk_size>) = 1
            OR q_last_value.row_num = q_last_value.last_val;
        ';
    CALL chunk_pgplsql_lib.p_replace(
        io_source   => o_insert_chunks_statement,
        i_old       => '<chunk_size>',
        i_new       => i_chunk_size::VARCHAR
    );
    CALL chunk_pgplsql_lib.p_replace(
        io_source   => o_insert_chunks_statement,
        i_old       => '<key_cols>',
        i_new       => ARRAY_TO_STRING(i_pk_columns, ', ')
    );
    CALL chunk_pgplsql_lib.p_replace(
        io_source   => o_insert_chunks_statement,
        i_old       => '<qualified_table_name>',
        i_new       => i_driving_schema_name||'.'||i_driving_table_name
    );

    FOR l_chunk_boundry_key_col IN 1..CARDINALITY(i_pk_columns) LOOP
        IF l_chunk_boundry_key_cols IS NULL THEN
            l_chunk_boundry_key_cols:= '';
        ELSE
            l_chunk_boundry_key_cols:= l_chunk_boundry_key_cols||', ';
        END IF;
        l_chunk_boundry_key_cols:= l_chunk_boundry_key_cols||'pk_key'||(l_chunk_boundry_key_col::VARCHAR(100));
        IF i_pk_types[l_chunk_boundry_key_col] = chunk_pgplsql_const.integer_type() THEN
            l_chunk_boundry_key_cols:= l_chunk_boundry_key_cols||'.integer_value';
        ELSIF i_pk_types[l_chunk_boundry_key_col] = chunk_pgplsql_const.varchar_type() THEN
            l_chunk_boundry_key_cols:= l_chunk_boundry_key_cols||'.varchar_value';
        ELSIF i_pk_types[l_chunk_boundry_key_col] = chunk_pgplsql_const.timestamptz_type() THEN
            l_chunk_boundry_key_cols:= l_chunk_boundry_key_cols||'.timestamptz_value';
        ELSE
            RAISE EXCEPTION 'Unknown type for % %', i_pk_columns[l_chunk_boundry_key_col], i_pk_types[l_chunk_boundry_key_col];
        END IF;
    END LOOP;
    CALL chunk_pgplsql_lib.p_replace(
        io_source   => o_insert_chunks_statement,
        i_old       => '<chunk_boundry_key_cols>',
        i_new       => l_chunk_boundry_key_cols
    );

    CALL chunk_pgplsql_lib.log_line(
        i_log_line  => 'Chunking query',
        i_log_level => i_log_level,
        i_call_type => 1
    );
    CALL chunk_pgplsql_lib.log_line(
        i_log_line  => '==============',
        i_log_level => i_log_level,
        i_call_type => 1
    );
    CALL chunk_pgplsql_lib.log_line(
        i_log_line      => '%',
        i_expression_1  => o_insert_chunks_statement,
        i_log_level     => i_log_level,
        i_call_type     => 1
        );
    CALL chunk_pgplsql_lib.log_line(
        i_log_line  => '==============',
        i_log_level => i_log_level,
        i_call_type => 1
    );

END;$$
;