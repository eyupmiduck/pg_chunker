/*
    Returns the timestamp value of an integer pk columns.
    Return an error if the column is not of type timestamp
*/
CREATE OR REPLACE FUNCTION chunk_pgplsql_lib.get_timestamptz(
    i_key   IN chunk_data.chunk_key
) RETURNS TIMESTAMP
LANGUAGE plpgsql
AS $$
BEGIN
    IF i_key.timestamptz_value IS NULL THEN
        RAISE EXCEPTION 'Not a timestamp';
    ELSE
        RETURN i_key.timestamptz_value;
    END IF;
END;$$
;