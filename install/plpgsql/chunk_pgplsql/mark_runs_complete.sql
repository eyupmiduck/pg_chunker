CREATE OR REPLACE PROCEDURE chunk_pgplsql.mark_runs_complete(
    i_run_name  IN VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE chunk_data.chunk_run r
    SET end_timestamp = NOW()
    WHERE r.run_name = i_run_name
    AND   r.end_timestamp IS NULL;
END;$$
;