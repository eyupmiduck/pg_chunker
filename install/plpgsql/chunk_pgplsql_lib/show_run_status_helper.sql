/*
    Logs the status of a run
*/
CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.show_run_status_helper(
    i_run_id  IN INTEGER
)
LANGUAGE plpgsql
AS $$
DECLARE
    l_run_record    RECORD;
BEGIN
    SELECT r.*
    INTO STRICT l_run_record
    FROM chunk_data.chunk_run r
    WHERE r.id = i_run_id;

    RAISE NOTICE 'Run id            : %', i_run_id;
    RAISE NOTICE 'Run name          : %', l_run_record.run_name;
    RAISE NOTICE 'Table             : %.%', l_run_record.driving_schema_name, l_run_record.driving_table_name;
    RAISE NOTICE 'Chunk size        : %', l_run_record.chunk_size;
    RAISE NOTICE 'Chunks completed  : % of %', l_run_record.number_of_chunks, l_run_record.last_completed_chunk;
    RAISE NOTICE 'Run start date    : %', l_run_record.start_timestamp;
    RAISE NOTICE 'Run end date      : %', l_run_record.end_timestamp;
    RAISE NOTICE '==============================================';
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE NOTICE 'No such run: %', i_run_id;
END;$$
;