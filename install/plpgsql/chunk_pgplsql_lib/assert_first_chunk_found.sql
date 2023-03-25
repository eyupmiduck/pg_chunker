CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.assert_first_chunk_found(
    i_found         IN BOOLEAN,
    i_run_id        IN INTEGER,
    i_start_chunk   IN INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF i_found = FALSE THEN
        RAISE EXCEPTION 'First chunk was not found for run_id % and chunk number %', i_run_id, i_start_chunk;
    END IF;
END;$$
;