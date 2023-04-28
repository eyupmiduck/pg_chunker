/*
    runs a test insert operation into the 1 char target table from the source table
    validates the rows to make sure they are identical
*/
CREATE OR REPLACE PROCEDURE chunk_test_pgplsql.test_insert_test_table_v_pk(
    i_chunk_size IN INTEGER
)
LANGUAGE plpgsql
AS $$
DECLARE
    l_table_name    VARCHAR(4000) := 'test_table_v_pk';
BEGIN
    RAISE NOTICE 'Starting chunk size: %', i_chunk_size::VARCHAR;
    EXECUTE 'TRUNCATE TABLE '||chunk_pgplsql_const.chunk_test_data_target_schema()||'.'||l_table_name;
    CALL chunk_pgplsql.execute_dml(
        i_driving_schema_name => chunk_pgplsql_const.chunk_test_data_source_schema(),
        i_driving_table_name  => l_table_name,
        i_statement_text      => '
            INSERT INTO chunk_test_data_target.test_table_v_pk(key1 , row_value)
            SELECT t.key1 , t.row_value
            FROM <driving_table>
            WHERE  <primary_key_range>',
        i_chunk_size          => i_chunk_size,
        i_run_name            => 'test_insert_test_table_v_pk'
    );
    CALL chunk_test_pgplsql.validate_test_table(
        i_table_name => l_table_name
    );
END;$$
;

CREATE OR REPLACE PROCEDURE chunk_test_pgplsql.test_insert_test_table_v_pk(
    i_lower_chunk_size IN INTEGER,
    i_upper_chunk_size IN INTEGER
)
LANGUAGE plpgsql
AS $$
DECLARE
    l_chunk_size    INTEGER;
BEGIN
    CALL chunk_pgplsql.mark_runs_complete(
        i_run_name  => 'test_insert_test_table_v_pk'
    );
    FOR l_chunk_size IN i_lower_chunk_size..i_upper_chunk_size LOOP
        CALL chunk_test_pgplsql.test_insert_test_table_v_pk(
            i_chunk_size => l_chunk_size
        );
   END LOOP;
END;$$
;