CREATE OR REPLACE FUNCTION chunk_pgplsql_const.pk_key3_tag()
RETURNS VARCHAR
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN '<pk_key3>';
END;$$
;