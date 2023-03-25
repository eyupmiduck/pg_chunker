CREATE OR REPLACE FUNCTION chunk_pgplsql_const.driving_table_tag()
RETURNS VARCHAR
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN '<driving_table>';
END;$$
;