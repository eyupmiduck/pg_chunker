\set ON_ERROR_STOP on

DO $$
BEGIN
    CALL chunk_pgplsql.show_queries(
        i_driving_schema_name => chunk_pgplsql_const.chunk_test_data_source_schema(),
        i_driving_table_name  => 'test_table_int_pk',
        i_statement_text      => '
            INSERT INTO chunk_test_data_target.test_table_int_pk(key1, row_value)
            SELECT t.key1, t.row_value
            FROM <driving_table>
            WHERE  <primary_key_range>'
    );
END$$
;

DO $$
BEGIN
    CALL chunk_pgplsql.show_queries(
        i_driving_schema_name => chunk_pgplsql_const.chunk_test_data_source_schema(),
        i_driving_table_name  => 'test_table_int_int_pk',
        i_statement_text      => '
            INSERT INTO chunk_test_data_target.test_table_int_int_pk(key1, key2, row_value)
            SELECT t.key1, t.key2, t.row_value
            FROM <driving_table>
            WHERE  <primary_key_range>'
    );
END$$
;

\q