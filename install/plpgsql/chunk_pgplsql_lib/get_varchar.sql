CREATE OR REPLACE FUNCTION chunk_pgplsql_lib.get_varchar(
    i_key   IN chunk_data.chunk_key
) RETURNS VARCHAR
LANGUAGE plpgsql
AS $$
BEGIN
    IF i_key.varchar_value IS NULL THEN
        RAISE EXCEPTION 'Not a varchar';
    ELSE
        RETURN i_key.varchar_value;
    END IF;
END;$$
;