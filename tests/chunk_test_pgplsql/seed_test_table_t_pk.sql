/*
    inserts test data into the 1 column pk timestamp source data table
*/
CREATE OR REPLACE PROCEDURE chunk_test_pgplsql.seed_test_table_t_pk(
    i_number_of_rows IN INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    TRUNCATE TABLE chunk_test_data_source.test_table_t_pk;
    INSERT INTO chunk_test_data_source.test_table_t_pk(key1, row_value)
    SELECT day, ((random() * 1000000) + 1)::INTEGER
    FROM generate_series(timestamp '2000-01-01'
                     , timestamp '3000-01-01'
                     , interval  '1 minute') AS t(day)
    LIMIT i_number_of_rows;
    COMMIT;
END;$$
;