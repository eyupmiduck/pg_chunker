CREATE OR REPLACE FUNCTION chunk_pgplsql_lib.get_integer(
    i_key   IN chunk_data.chunk_key
) RETURNS INTEGER
LANGUAGE plpgsql
AS $$
BEGIN
    IF i_key.integer_value IS NULL THEN
        RAISE EXCEPTION 'Not an integer';
    ELSE
        RETURN i_key.integer_value;
    END IF;
END;$$
;