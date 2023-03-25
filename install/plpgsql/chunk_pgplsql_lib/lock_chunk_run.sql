CREATE OR REPLACE FUNCTION chunk_pgplsql_lib.lock_chunk_run(
    i_run_id                IN INTEGER
) RETURNS BOOLEAN
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN pg_try_advisory_lock(4337, i_run_id);
END;$$
;