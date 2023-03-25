CREATE OR REPLACE FUNCTION chunk_pgplsql_const.primary_key_range_tag()
RETURNS VARCHAR
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN '<primary_key_range>';
END;$$
;