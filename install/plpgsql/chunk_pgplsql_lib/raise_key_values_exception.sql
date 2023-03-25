CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.raise_key_values_exception(
    i_chunk_number  IN INTEGER,
    i_run_id        IN INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    RAISE EXCEPTION 'Don''t know what to do with chunk % for run %', i_chunk_number, i_run_id;
END;$$
;