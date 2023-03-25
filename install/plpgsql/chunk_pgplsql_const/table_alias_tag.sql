CREATE OR REPLACE FUNCTION chunk_pgplsql_const.table_alias_tag()
RETURNS VARCHAR
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN '<table_alias_tag>';
END;$$
;