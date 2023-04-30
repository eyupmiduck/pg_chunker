/*
    Executes the final chunk of a chunking operation with a driving table with 2 PK columns
*/
CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.pk2_execute_final(
    i_lower_boundary_record IN RECORD,
    i_run_id                IN INTEGER,
    i_chunk_number          IN INTEGER,
    i_final_stmt            IN VARCHAR
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
            i_stmt                  => i_final_stmt,
            i_is_final_sub_chunk    => TRUE,
            i_is_final_chunk        => TRUE,
            o_sub_chunk_number      => l_sub_chunk_number
        );
    END IF;
END;$$
;