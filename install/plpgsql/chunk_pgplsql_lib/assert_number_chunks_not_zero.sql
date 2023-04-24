/*
    Assert the  number of chunks is non zero
*/
CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.assert_number_chunks_not_zero(
    i_number_of_chunks  IN INTEGER,
    i_start_chunk       IN INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF i_number_of_chunks <> 0 THEN
        RAISE EXCEPTION 'Nothing to do here start chunk was % and end chunk was %', i_start_chunk, i_number_of_chunks;
    END IF;
END;$$
;