/*
    Returns true if the key column is an timestamp
*/
CREATE OR REPLACE FUNCTION chunk_pgplsql_lib.is_timestamptz(
    i_key   IN chunk_data.chunk_key
) RETURNS BOOLEAN
LANGUAGE plpgsql
AS $$
BEGIN
    IF i_key.timestamptz_value IS NULL THEN
        RETURN FALSE;
    ELSE
        RETURN TRUE;
    END IF;
END;$$
;