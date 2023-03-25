CREATE OR REPLACE FUNCTION chunk_pgplsql_const.integer_type()
RETURNS VARCHAR
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN 'integer';
END;$$
;