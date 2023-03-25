CREATE OR REPLACE FUNCTION chunk_pgplsql_const.timestamptz_type()
RETURNS VARCHAR
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN 'timestamp without time zone';
END;$$
;