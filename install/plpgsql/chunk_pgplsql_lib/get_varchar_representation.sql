/*
    Returns the varchar value of a pk column.  Useful for debugging
*/
CREATE OR REPLACE FUNCTION chunk_pgplsql_lib.get_varchar_representation(
    i_key   IN chunk_data.chunk_key
) RETURNS VARCHAR
LANGUAGE plpgsql
AS $$
BEGIN
    IF chunk_pgplsql_lib.is_varchar(i_key) THEN
        RETURN chunk_pgplsql_lib.get_varchar(i_key);
    ELSIF chunk_pgplsql_lib.is_integer(i_key) THEN
        RETURN chunk_pgplsql_lib.get_integer(i_key)::VARCHAR;
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key) THEN
        RETURN TO_CHAR(chunk_pgplsql_lib.get_timestamptz(i_key), 'YYYY/MM/DD HH12:MM:SS');
    ELSE
        RAISE EXCEPTION 'You should never have got here with %', i_key;
    END IF;
END;$$
;