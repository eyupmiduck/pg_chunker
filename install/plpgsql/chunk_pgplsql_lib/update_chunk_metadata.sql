/*
    updates the end timestamp value of a completed chunk
*/
CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.update_chunk_metadata(
    i_run_id                IN INTEGER,
    i_chunk_number          IN INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE chunk_data.chunk_boundary b
    SET end_timestamp = NOW()
    WHERE b.chunk_run_id = i_run_id
    AND   b.chunk_number = i_chunk_number;

    UPDATE chunk_data.chunk_run d
    SET last_completed_chunk = i_chunk_number
    WHERE d.id = i_run_id;
END;$$
;