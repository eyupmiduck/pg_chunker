CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.assert_upper_chunk_found(
    i_found         IN BOOLEAN,
    i_run_id        IN INTEGER,
    i_upper_chunk   IN INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF i_found = FALSE THEN
        RAISE EXCEPTION 'Upper bound of was not found for run_id % and chunk number %', i_run_id, i_upper_chunk;
    END IF;
END;$$
;