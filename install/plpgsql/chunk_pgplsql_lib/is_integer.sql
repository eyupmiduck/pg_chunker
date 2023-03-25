CREATE OR REPLACE FUNCTION chunk_pgplsql_lib.is_integer(
    i_key   IN chunk_data.chunk_key
) RETURNS BOOLEAN
LANGUAGE plpgsql
AS $$
BEGIN
    IF i_key.integer_value IS NULL THEN
        RETURN FALSE;
    ELSE
        RETURN TRUE;
    END IF;
END;$$
;