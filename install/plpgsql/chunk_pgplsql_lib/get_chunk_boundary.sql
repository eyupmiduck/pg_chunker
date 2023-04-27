/*
    for a given run id and chunk number return a record that holds the key values of the chunk boundary
*/
CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.get_chunk_boundary(
    i_run_id            IN INTEGER,
    i_chunk_number      IN INTEGER,
    o_found             OUT BOOLEAN,
    o_boundary_record   OUT RECORD
)
LANGUAGE plpgsql
AS $$
BEGIN
    o_found:= FALSE;
    BEGIN
        SELECT b.pk_key1, b.pk_key2, b.pk_key3, b.end_timestamp, b.sub_chunk_number
        INTO STRICT o_boundary_record
        FROM chunk_data.chunk_boundary b
        WHERE b.chunk_run_id = i_run_id
        AND   b.chunk_number = i_chunk_number;
        IF o_boundary_record.end_timestamp IS NOT NULL THEN
            RAISE EXCEPTION 'For run id % and chunk number % the status was complete.  Should not happen.', i_run_id, i_chunk_number;
        END IF;
        o_found:= TRUE;
    EXCEPTION WHEN NO_DATA_FOUND THEN NULL;
    END;
END;$$
;