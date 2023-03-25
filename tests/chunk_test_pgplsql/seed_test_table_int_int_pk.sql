CREATE OR REPLACE PROCEDURE chunk_test_pgplsql.seed_test_table_int_int_pk(
    i_number_of_rows1 IN INTEGER,
    i_number_of_rows2 IN INTEGER
)
LANGUAGE plpgsql
AS $$
DECLARE
    l_key1  INTEGER;
BEGIN
    TRUNCATE TABLE chunk_test_data_source.test_table_int_int_pk;
    FOR l_key1 IN 1..i_number_of_rows1 LOOP
        RAISE NOTICE '%', l_key1;
        INSERT INTO chunk_test_data_source.test_table_int_int_pk(key1, key2, row_value)
        SELECT l_key1,b, ((random() * 1000000) + 1)::INTEGER
        FROM generate_series(1,i_number_of_rows2) b;
        COMMIT;
    END LOOP;
END;$$
;