/*
    Returns true is the two key columns are of equal value.  Will return an error if the two columns are of a different type
*/
CREATE OR REPLACE FUNCTION chunk_pgplsql_lib.is_key_equal(
    i_key1  IN chunk_data.chunk_key,
    i_key2  IN chunk_data.chunk_key
) RETURNS BOOLEAN
LANGUAGE plpgsql
AS $$
BEGIN
    IF  i_key1.varchar_value IS NOT NULL
    AND i_key2.varchar_value IS NOT NULL
    AND THEN
        IF i_key1.varchar_value = i_key2.varchar_value THEN
            RETURN TRUE;
        ELSE
            RETURN FALSE;
        END IF;
    ELSIF i_key1.integer_value IS NOT NULL
    AND   i_key2.integer_value IS NOT NULL
    AND THEN
        IF i_key1.integer_value = i_key2.integer_value THEN
            RETURN TRUE;
        ELSE
            RETURN FALSE;
        END IF;
    ELSIF i_key1.timestamptz_value IS NOT NULL
    AND   i_key2.timestamptz_value IS NOT NULL
    AND THEN
        IF i_key1.timestamptz_value = i_key2.timestamptz_value THEN
            RETURN TRUE;
        ELSE
            RETURN FALSE;
        END IF;
    ELSE
        RAISE EXCEPTION 'Key mismatch';
    END IF;
END;$$
;