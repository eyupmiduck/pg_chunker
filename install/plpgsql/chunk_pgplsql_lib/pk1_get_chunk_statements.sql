CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.pk1_get_chunk_statements(
    i_driving_schema_name   IN  VARCHAR,
    i_driving_table_name    IN  VARCHAR,
    i_statement_text        IN  VARCHAR,
    i_pk_columns            IN  VARCHAR[],
    i_pk_types              IN  VARCHAR[],
    i_table_alias           IN  VARCHAR,
    i_log_level             IN  INTEGER,
    o_k1_n_stmt             OUT VARCHAR,
    o_final_stmt            OUT VARCHAR
)
LANGUAGE plpgsql
AS $$
DECLARE
    l_k1_n_key  VARCHAR(65535);
    l_final_key VARCHAR(65535);
BEGIN
    o_k1_n_stmt := i_statement_text;
    o_final_stmt:= i_statement_text;

    l_k1_n_key  :=
                '('    ||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key1_tag()||' >= $1 '||
                ' AND '||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key1_tag()||' < $2 '||
                ')';
    l_final_key := '('||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key1_tag()||' = $1)';

    CALL chunk_pgplsql_lib.replace_tags_in_key_clause(
        i_pk_columns    => i_pk_columns,
        i_table_alias   => i_table_alias,
        io_stmt         => l_k1_n_key
    );
    CALL chunk_pgplsql_lib.replace_tags_in_key_clause(
        i_pk_columns    => i_pk_columns,
        i_table_alias   => i_table_alias,
        io_stmt         => l_final_key
    );

    CALL chunk_pgplsql_lib.p_replace(
        io_source   => o_k1_n_stmt,
        i_old       => chunk_pgplsql_const.primary_key_range_tag(),
        i_new       => l_k1_n_key
    );
    CALL chunk_pgplsql_lib.p_replace(
        io_source   => o_final_stmt,
        i_old       => chunk_pgplsql_const.primary_key_range_tag(),
        i_new       => l_final_key
    );

    CALL chunk_pgplsql_lib.replace_table_tags(
        i_driving_schema_name   => i_driving_schema_name,
        i_driving_table_name    => i_driving_table_name,
        i_table_alias           => i_table_alias,
        io_stmt                 => o_k1_n_stmt
    );
    CALL chunk_pgplsql_lib.replace_table_tags(
        i_driving_schema_name   => i_driving_schema_name,
        i_driving_table_name    => i_driving_table_name,
        i_table_alias           => i_table_alias,
        io_stmt                 => o_final_stmt
    );

    CALL chunk_pgplsql_lib.log_line(
        i_log_line  => '=============='::VARCHAR,
        i_log_level => i_log_level,
        i_call_type => 1
    );
    CALL chunk_pgplsql_lib.log_statements(
        i_log_level         => i_log_level,
        i_stmt_description  => 'Key 1 not equal statement',
        i_stmt_1            => o_k1_n_stmt
    );
    CALL chunk_pgplsql_lib.log_statements(
        i_log_level         => i_log_level,
        i_stmt_description  => 'Final row statement',
        i_stmt_1            => o_final_stmt
    );

END;$$
;