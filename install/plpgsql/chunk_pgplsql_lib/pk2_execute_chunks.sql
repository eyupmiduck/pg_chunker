CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.pk2_execute_chunks(
    i_driving_schema_name   IN VARCHAR,
    i_driving_table_name    IN VARCHAR,
    i_statement_text        IN VARCHAR,
    i_run_id                IN INTEGER,
    i_start_chunk           IN INTEGER,
    i_number_of_chunks      IN INTEGER,
    i_pk_columns            IN VARCHAR[],
    i_pk_types              IN VARCHAR[],
    i_table_alias           IN VARCHAR,
    i_log_level             IN INTEGER,
    i_log_every_chunk       IN INTEGER
)
LANGUAGE plpgsql
AS $$
DECLARE
    l_current_chunk         INTEGER;
    l_k1_e_k2_n_key_stmt    VARCHAR(65535);
    l_k1_n_1_stmt           VARCHAR(65535);
    l_k1_n_2_stmt           VARCHAR(65535);
    l_k1_n_3_stmt           VARCHAR(65535);
    l_final_stmt            VARCHAR(65535);
    l_upper_boundary_record RECORD;
    l_lower_boundary_record RECORD;
    l_found                 BOOLEAN;
BEGIN
    CALL chunk_pgplsql_lib.pk2_get_chunk_statements(
        i_driving_schema_name   => i_driving_schema_name,
        i_driving_table_name    => i_driving_table_name,
        i_statement_text        => i_statement_text,
        i_pk_columns            => i_pk_columns,
        i_pk_types              => i_pk_types,
        i_table_alias           => i_table_alias,
        i_log_level             => i_log_level,
        o_k1_e_k2_n_key_stmt    => l_k1_e_k2_n_key_stmt,
        o_k1_n_1_stmt           => l_k1_n_1_stmt,
        o_k1_n_2_stmt           => l_k1_n_2_stmt,
        o_k1_n_3_stmt           => l_k1_n_3_stmt,
        o_final_stmt            => l_final_stmt
    );

    IF i_start_chunk <=  i_number_of_chunks THEN
        CALL chunk_pgplsql_lib.get_chunk_boundary(
            i_run_id            => i_run_id,
            i_chunk_number      => i_start_chunk,
            o_found             => l_found,
            o_boundary_record   => l_lower_boundary_record
        );
        CALL chunk_pgplsql_lib.assert_lower_chunk_found(
            i_found         => l_found,
            i_run_id        => i_run_id,
            i_start_chunk   => i_start_chunk
        );
        FOR l_current_chunk IN i_start_chunk..i_number_of_chunks LOOP
            CALL chunk_pgplsql_lib.log_chunk_progress(
                i_current_chunk     => l_current_chunk,
                i_number_of_chunks  => i_number_of_chunks,
                i_log_level         => i_log_level,
                i_log_every_chunk   => i_log_every_chunk
            );
            IF l_current_chunk = i_number_of_chunks THEN

                CALL chunk_pgplsql_lib.pk2_execute_final(
                    i_lower_boundary_record => l_lower_boundary_record,
                    i_run_id                => i_run_id,
                    i_chunk_number          => l_current_chunk,
                    i_final_stmt            => l_final_stmt
                );
            ELSE
                CALL chunk_pgplsql_lib.get_chunk_boundary(
                    i_run_id            => i_run_id,
                    i_chunk_number      => l_current_chunk + 1,
                    o_found             => l_found,
                    o_boundary_record   => l_upper_boundary_record
                );

                CALL chunk_pgplsql_lib.assert_upper_chunk_found(
                    i_found         => l_found,
                    i_run_id        => i_run_id,
                    i_upper_chunk   => l_current_chunk + 1
                );

                IF  chunk_pgplsql_lib.is_key_equal(i_key1 => l_lower_boundary_record.pk_key1, i_key2 => l_upper_boundary_record.pk_key1)
                AND NOT chunk_pgplsql_lib.is_key_equal(i_key1 => l_lower_boundary_record.pk_key2, i_key2 => l_upper_boundary_record.pk_key2)
                THEN
                    CALL chunk_pgplsql_lib.pk2_execute_k1_e_k2_n(
                        i_lower_boundary_record => l_lower_boundary_record,
                        i_upper_boundary_record => l_upper_boundary_record,
                        i_run_id                => i_run_id,
                        i_chunk_number          => l_current_chunk,
                        i_k1_e_k2_n_key_stmt    => l_k1_e_k2_n_key_stmt
                    );
                ELSIF NOT chunk_pgplsql_lib.is_key_equal(i_key1 => l_lower_boundary_record.pk_key1, i_key2 => l_upper_boundary_record.pk_key1) THEN
                    CALL chunk_pgplsql_lib.pk2_execute_k1_n(
                        i_lower_boundary_record => l_lower_boundary_record,
                        i_upper_boundary_record => l_upper_boundary_record,
                        i_run_id                => i_run_id,
                        i_chunk_number          => l_current_chunk,
                        i_k1_n_1_stmt           => l_k1_n_1_stmt,
                        i_k1_n_2_stmt           => l_k1_n_2_stmt,
                        i_k1_n_3_stmt           => l_k1_n_3_stmt
                    );
                ELSE
                    CALL chunk_pgplsql_lib.raise_key_values_exception(
                        i_chunk_number  => l_current_chunk,
                        i_run_id        => i_run_id
                    );
                END IF;

                l_lower_boundary_record:= l_upper_boundary_record;
            END IF;
        END LOOP;
    ELSE
        CALL chunk_pgplsql_lib.assert_number_chunks_not_zero(
            i_number_of_chunks  => i_number_of_chunks,
            i_start_chunk       => i_start_chunk
        );
    END IF;
END;$$
;