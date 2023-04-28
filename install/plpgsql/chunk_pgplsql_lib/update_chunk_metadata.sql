/*
    updates the end timestamp value of a completed chunk
*/
CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.update_chunk_metadata(
    i_run_id                IN INTEGER,
    i_chunk_number          IN INTEGER,
    i_sub_chunk_number      IN INTEGER,
    i_is_final_sub_chunk    IN BOOLEAN,
    i_is_final_chunk        IN BOOLEAN
)
LANGUAGE plpgsql
AS $$
BEGIN

    IF i_is_final_sub_chunk THEN
        UPDATE chunk_data.chunk_run d
        SET last_completed_chunk = i_chunk_number
        WHERE d.id = i_run_id;

        UPDATE chunk_data.chunk_boundary b
        SET end_timestamp = NOW(),
            sub_chunk_number = i_sub_chunk_number
        WHERE b.chunk_run_id = i_run_id
        AND   b.chunk_number = i_chunk_number;
    ELSE
        UPDATE chunk_data.chunk_boundary b
        SET sub_chunk_number = i_sub_chunk_number
        WHERE b.chunk_run_id = i_run_id
        AND   b.chunk_number = i_chunk_number;
    END IF;

    IF i_is_final_chunk THEN
        UPDATE chunk_data.chunk_run r
        SET end_timestamp = NOW()
        WHERE r.id = i_run_id
        AND   r.end_timestamp IS NULL;
    END IF;

END;$$
;