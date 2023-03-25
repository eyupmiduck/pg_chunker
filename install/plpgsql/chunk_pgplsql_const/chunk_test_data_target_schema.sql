CREATE OR REPLACE FUNCTION chunk_pgplsql_const.chunk_test_data_target_schema()
RETURNS VARCHAR
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN 'chunk_test_data_target';
END;$$
;