/*
    inserts test data into the 3 column pk source data table
*/
CREATE OR REPLACE PROCEDURE chunk_test_pgplsql.seed_test_table_int_int_int_pk(
    i_number_of_rows1 IN INTEGER,
    i_number_of_rows2 IN INTEGER,
    i_number_of_rows3 IN INTEGER
)
LANGUAGE plpgsql
AS $$
DECLARE
    l_key1  INTEGER;
BEGIN
    TRUNCATE TABLE chunk_test_data_source.test_table_int_int_int_pk;
    FOR l_key1 IN 1..i_number_of_rows1 LOOP
        RAISE NOTICE '%', l_key1;
        FOR l_key2 IN 1..i_number_of_rows1 LOOP
            INSERT INTO chunk_test_data_source.test_table_int_int_int_pk(key1, key2, key3, row_value)
            SELECT l_key1, l_key2, b, ((random() * 1000000) + 1)::INTEGER
            FROM generate_series(1,i_number_of_rows2) b;
            COMMIT;
        END LOOP;
    END LOOP;
END;$$
;