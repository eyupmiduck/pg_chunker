/*
    Executes a chunk for a 3 col pk table is:
    col 1 lower bound is equal to upper bound
    col 2 lower bound is not equal to upper bound
*/
CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.pk3_execute_k1_e_k2_n(
    i_lower_boundary_record IN RECORD,
    i_upper_boundary_record IN RECORD,
    i_run_id                IN INTEGER,
    i_chunk_number          IN INTEGER,
    i_k1_e_k2_n_1_stmt      IN VARCHAR,
    i_k1_e_k2_n_2_stmt      IN VARCHAR,
    i_k1_e_k2_n_3_stmt      IN VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    CALL chunk_pgplsql_lib.execute_chunk_stmt(
        i_key1  => i_lower_boundary_record.pk_key1,
        i_key2  => i_lower_boundary_record.pk_key2,
        i_key3  => i_lower_boundary_record.pk_key3,
        i_stmt  => i_k1_e_k2_n_1_stmt
    );
    CALL chunk_pgplsql_lib.execute_chunk_stmt(
        i_key1  => i_lower_boundary_record.pk_key1,
        i_key2  => i_lower_boundary_record.pk_key2,
        i_key3  => i_upper_boundary_record.pk_key2,
        i_stmt  => i_k1_e_k2_n_2_stmt
    );
    CALL chunk_pgplsql_lib.execute_chunk_stmt(
        i_key1  => i_upper_boundary_record.pk_key1,
        i_key2  => i_upper_boundary_record.pk_key2,
        i_key3  => i_upper_boundary_record.pk_key3,
        i_stmt  => i_k1_e_k2_n_3_stmt
    );

    CALL chunk_pgplsql_lib.update_chunk_metadata(
        i_run_id        => i_run_id,
        i_chunk_number  => i_chunk_number
    );
    COMMIT;
END;$$
;