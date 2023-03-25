CREATE OR REPLACE FUNCTION chunk_pgplsql_const.pk_key2_tag()
RETURNS VARCHAR
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN '<pk_key2>';
END;$$
;