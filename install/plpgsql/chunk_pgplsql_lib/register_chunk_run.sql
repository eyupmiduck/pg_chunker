/*
    Checks to see if an unfinished run exists and returns the values
    Otherwise creates the metadata for a new run
*/
CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.register_chunk_run(
    i_driving_schema_name   IN  VARCHAR,
    i_driving_table_name    IN  VARCHAR,
    i_chunk_size            IN  INTEGER,
    i_run_name              IN  VARCHAR,
    i_log_level             IN  INTEGER,
    o_run_id                OUT INTEGER,
    o_start_chunk           OUT INTEGER,
    o_number_of_chunks      OUT INTEGER,
    o_pk_columns            OUT VARCHAR[],
    o_pk_types              OUT VARCHAR[]
)
LANGUAGE plpgsql
AS $$
DECLARE
    l_insert_chunks_statement   VARCHAR(4000);
BEGIN
    CALL chunk_pgplsql_lib.validate_driving_table(
        i_driving_schema_name   => i_driving_schema_name,
        i_driving_table_name    => i_driving_table_name,
        o_pk_columns            => o_pk_columns,
        o_pk_types              => o_pk_types
    );
    CALL chunk_pgplsql_lib.get_chunk_range_query(
        i_driving_schema_name       => i_driving_schema_name,
        i_driving_table_name        => i_driving_table_name,
        i_pk_columns                => o_pk_columns,
        i_pk_types                  => o_pk_types,
        i_log_level                 => i_log_level,
        i_chunk_size                => i_chunk_size,
        o_insert_chunks_statement   => l_insert_chunks_statement
    );

    BEGIN
        SELECT id, last_completed_chunk + 1, number_of_chunks
        INTO STRICT o_run_id, o_start_chunk, o_number_of_chunks
        FROM chunk_data.chunk_run r
        WHERE r.run_name = i_run_name
        AND   r.chunk_size = i_chunk_size
        AND   r.end_timestamp IS NULL;
        CALL chunk_pgplsql_lib.log_line(
            i_log_line      => 'Found existing run id is: %',
            i_expression_1  => o_run_id,
            i_log_level     => i_log_level,
            i_call_type => 2
        );
    EXCEPTION WHEN NO_DATA_FOUND THEN
        BEGIN
            INSERT INTO chunk_data.chunk_run(
                id,
                driving_schema_name,
                driving_table_name,
                chunk_size,
                run_name
            )
            VALUES(
                DEFAULT,
                i_driving_schema_name,
                i_driving_table_name,
                i_chunk_size,
                i_run_name
            )
            RETURNING id INTO o_run_id;
            CALL chunk_pgplsql_lib.log_line(
                i_log_line      => 'Creating new run id: %',
                i_expression_1  => o_run_id,
                i_log_level     => i_log_level,
                i_call_type     => 2
            );

            EXECUTE l_insert_chunks_statement USING o_run_id;
            IF FOUND THEN
                GET DIAGNOSTICS o_number_of_chunks := ROW_COUNT;
            END IF;

            UPDATE chunk_data.chunk_run r
            SET number_of_chunks = o_number_of_chunks
            WHERE r.id = o_run_id;
            o_start_chunk:= 1;

        END;
    END;
    CALL chunk_pgplsql_lib.log_line(
        i_log_line      => 'Starting at Chunk: %',
        i_expression_1  => o_start_chunk,
        i_log_level     => i_log_level,
        i_call_type     => 2
    );

    IF NOT chunk_pgplsql_lib.lock_chunk_run(i_run_id => o_run_id) THEN
        RAISE EXCEPTION 'Could not obtain advisory lock for run id %.  Concurrent execution of a run is not allowed', o_run_id;
    END IF;

    COMMIT;
END;$$
;