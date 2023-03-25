CREATE OR REPLACE FUNCTION chunk_pgplsql_const.varchar_type()
RETURNS VARCHAR
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN 'character varying';
END;$$
;