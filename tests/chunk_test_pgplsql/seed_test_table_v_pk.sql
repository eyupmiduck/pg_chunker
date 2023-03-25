CREATE OR REPLACE PROCEDURE chunk_test_pgplsql.seed_test_table_v_pk(
    i_number_of_rows IN INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    TRUNCATE TABLE chunk_test_data_source.test_table_v_pk;
    INSERT INTO chunk_test_data_source.test_table_v_pk(key1, row_value)
    SELECT to_hex(s), ((random() * 1000000) + 1)::INTEGER
    FROM generate_series(1,i_number_of_rows) s;
    COMMIT;
END;$$
;