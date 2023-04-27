/*
    Executes a chunk for a 3 col pk table is:
    col 1 lower bound is not equal to upper bound
*/
CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.pk3_execute_k1_n(
    i_lower_boundary_record IN RECORD,
    i_upper_boundary_record IN RECORD,
    i_run_id                IN INTEGER,
    i_chunk_number          IN INTEGER,
    i_k1_n_1_stmt           IN VARCHAR,
    i_k1_n_2_stmt           IN VARCHAR,
    i_k1_n_3_stmt           IN VARCHAR,
    i_k1_n_4_stmt           IN VARCHAR,
    i_k1_n_5_stmt           IN VARCHAR
)
LANGUAGE plpgsql
AS $$
DECLARE
    l_sub_chunk_number  INTEGER;
BEGIN
    l_sub_chunk_number:= i_lower_boundary_record.sub_chunk_number;
    IF l_sub_chunk_number = 0 THEN
        CALL chunk_pgplsql_lib.execute_chunk_stmt(
            i_run_id                => i_run_id,
            i_chunk_number          => i_chunk_number,
            i_key1                  => i_lower_boundary_record.pk_key1,
            i_key2                  => i_lower_boundary_record.pk_key2,
            i_key3                  => i_lower_boundary_record.pk_key3,
            i_stmt                  => i_k1_n_1_stmt,
            i_is_final_sub_chunk    => FALSE,
            i_is_final_chunk        => FALSE,
            o_sub_chunk_number      => l_sub_chunk_number
        );
    END IF;
    IF l_sub_chunk_number = 1 THEN
        CALL chunk_pgplsql_lib.execute_chunk_stmt(
            i_run_id                => i_run_id,
            i_chunk_number          => i_chunk_number,
            i_key1                  => i_lower_boundary_record.pk_key1,
            i_key2                  => i_lower_boundary_record.pk_key2,
            i_stmt                  => i_k1_n_2_stmt,
            i_is_final_sub_chunk    => FALSE,
            i_is_final_chunk        => FALSE,
            o_sub_chunk_number      => l_sub_chunk_number
        );
    END IF;
    IF l_sub_chunk_number = 2 THEN
        CALL chunk_pgplsql_lib.execute_chunk_stmt(
            i_run_id                => i_run_id,
            i_chunk_number          => i_chunk_number,
            i_key1                  => i_lower_boundary_record.pk_key1,
            i_key2                  => i_upper_boundary_record.pk_key1,
            i_stmt                  => i_k1_n_3_stmt,
            i_is_final_sub_chunk    => FALSE,
            i_is_final_chunk        => FALSE,
            o_sub_chunk_number      => l_sub_chunk_number
        );
    END IF;
    IF l_sub_chunk_number = 3 THEN
        CALL chunk_pgplsql_lib.execute_chunk_stmt(
            i_run_id                => i_run_id,
            i_chunk_number          => i_chunk_number,
            i_key1                  => i_upper_boundary_record.pk_key1,
            i_key2                  => i_upper_boundary_record.pk_key2,
            i_stmt                  => i_k1_n_4_stmt,
            i_is_final_sub_chunk    => FALSE,
            i_is_final_chunk        => FALSE,
            o_sub_chunk_number      => l_sub_chunk_number
        );
    END IF;
    IF l_sub_chunk_number = 4 THEN
        CALL chunk_pgplsql_lib.execute_chunk_stmt(
            i_run_id                => i_run_id,
            i_chunk_number          => i_chunk_number,
            i_key1                  => i_upper_boundary_record.pk_key1,
            i_key2                  => i_upper_boundary_record.pk_key2,
            i_key3                  => i_upper_boundary_record.pk_key3,
            i_stmt                  => i_k1_n_5_stmt,
            i_is_final_sub_chunk    => TRUE,
            i_is_final_chunk        => FALSE,
            o_sub_chunk_number      => l_sub_chunk_number
        );
    END IF;
END;$$
;