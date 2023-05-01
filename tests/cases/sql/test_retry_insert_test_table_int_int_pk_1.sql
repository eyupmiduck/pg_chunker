\set ON_ERROR_STOP on

UPDATE chunk_test_data_source.test_table_int_int_pk
SET divisor = NULL
WHERE divisor IS NOT NULL;

UPDATE chunk_test_data_source.test_table_int_int_pk
SET divisor = 0
WHERE key1=337
AND key2 = 47;

CALL chunk_pgplsql.mark_runs_complete(i_run_name  => 'test_retry_insert_test_table_int_int_pk');

TRUNCATE TABLE chunk_test_data_target.test_table_int_int_pk;

\unset ON_ERROR_STOP

DO $$
BEGIN
    CALL chunk_pgplsql.execute_dml(
        i_driving_schema_name => chunk_pgplsql_const.chunk_test_data_source_schema(),
        i_driving_table_name  => 'test_table_int_int_pk',
        i_statement_text      => '
            INSERT INTO chunk_test_data_target.test_table_int_int_pk(key1, key2, row_value)
            SELECT t.key1, t.key2, t.row_value / CASE WHEN t.divisor IS NULL THEN 1 ELSE divisor END
            FROM <driving_table>
            WHERE  <primary_key_range>',
        i_chunk_size          => 1000,
        i_run_name            => 'test_retry_insert_test_table_int_int_pk',
        i_suppress_run_id_log => TRUE
    );
END$$
;

\set ON_ERROR_STOP on


DO $$
DECLARE
    l_dummy INTEGER;
BEGIN
    SELECT 1
    INTO STRICT l_dummy
    FROM chunk_data.chunk_run r
    WHERE r.run_name = 'test_retry_insert_test_table_int_int_pk'
    AND   r.end_timestamp IS NULL;
END$$
;

CALL chunk_test_pgplsql.assert_uncompleted_run(
    i_run_name              => 'test_retry_insert_test_table_int_int_pk',
    i_chunk_size            => 1000,
    i_completed_chunks      => 336,
    i_uncompleted_chunks    => 665
);

UPDATE chunk_test_data_source.test_table_int_int_pk
SET divisor = 1
WHERE key1=337
AND key2 = 47;


DO $$
BEGIN
    CALL chunk_pgplsql.execute_dml(
        i_driving_schema_name => chunk_pgplsql_const.chunk_test_data_source_schema(),
        i_driving_table_name  => 'test_table_int_int_pk',
        i_statement_text      => '
            INSERT INTO chunk_test_data_target.test_table_int_int_pk(key1, key2, row_value)
            SELECT t.key1, t.key2, t.row_value / CASE WHEN t.divisor IS NULL THEN 1 ELSE divisor END
            FROM <driving_table>
            WHERE  <primary_key_range>',
        i_chunk_size          => 1000,
        i_run_name            => 'test_retry_insert_test_table_int_int_pk',
        i_suppress_run_id_log => TRUE
    );
END$$
;

CALL chunk_test_pgplsql.validate_test_table(
    i_table_name => 'test_table_int_int_pk'
);


\q