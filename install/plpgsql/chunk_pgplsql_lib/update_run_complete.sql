/*
    Marks a chunking run as complete
*/
CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.update_run_complete(
    i_run_id    IN INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE chunk_data.chunk_run r
    SET end_timestamp = NOW()
    WHERE r.id = i_run_id
    AND r.end_timestamp IS NULL;
END;$$
;