CREATE OR REPLACE FUNCTION chunk_pgplsql_const.pk_key1_tag()
RETURNS VARCHAR
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN '<pk_key1>';
END;$$
;