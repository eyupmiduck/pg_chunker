CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.pk1_execute_final(
    i_lower_boundary_record IN RECORD,
    i_run_id                IN INTEGER,
    i_chunk_number          IN INTEGER,
    i_final_stmt            IN VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    CALL chunk_pgplsql_lib.execute_chunk_stmt(
        i_key1  => i_lower_boundary_record.pk_key1,
        i_stmt  => i_final_stmt
    );
    CALL chunk_pgplsql_lib.update_chunk_metadata(
        i_run_id        => i_run_id,
        i_chunk_number  => i_chunk_number
    );
    CALL chunk_pgplsql_lib.update_run_complete(
        i_run_id        => i_run_id
    );
    COMMIT;
END;$$
;