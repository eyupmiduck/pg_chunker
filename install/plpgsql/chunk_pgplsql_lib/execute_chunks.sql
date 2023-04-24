/*
    executes the chunks inside a run.  Will call down to the specific implementation of the execute chunks code for the  number of columns in the PK
*/

CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.execute_chunks(
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
BEGIN
    IF CARDINALITY(i_pk_columns) = 1 THEN
        CALL chunk_pgplsql_lib.pk1_execute_chunks(
            i_driving_schema_name   => i_driving_schema_name,
            i_driving_table_name    => i_driving_table_name,
            i_statement_text        => i_statement_text,
            i_run_id                => i_run_id,
            i_start_chunk           => i_start_chunk,
            i_number_of_chunks      => i_number_of_chunks,
            i_pk_columns            => i_pk_columns,
            i_pk_types              => i_pk_types,
            i_table_alias           => i_table_alias,
            i_log_level             => i_log_level,
            i_log_every_chunk       => i_log_every_chunk
        );
    ELSIF CARDINALITY(i_pk_columns) = 2 THEN
        CALL chunk_pgplsql_lib.pk2_execute_chunks(
            i_driving_schema_name   => i_driving_schema_name,
            i_driving_table_name    => i_driving_table_name,
            i_statement_text        => i_statement_text,
            i_run_id                => i_run_id,
            i_start_chunk           => i_start_chunk,
            i_number_of_chunks      => i_number_of_chunks,
            i_pk_columns            => i_pk_columns,
            i_pk_types              => i_pk_types,
            i_table_alias           => i_table_alias,
            i_log_level             => i_log_level,
            i_log_every_chunk       => i_log_every_chunk
        );
    ELSIF CARDINALITY(i_pk_columns) = 3 THEN
        CALL chunk_pgplsql_lib.pk3_execute_chunks(
            i_driving_schema_name   => i_driving_schema_name,
            i_driving_table_name    => i_driving_table_name,
            i_statement_text        => i_statement_text,
            i_run_id                => i_run_id,
            i_start_chunk           => i_start_chunk,
            i_number_of_chunks      => i_number_of_chunks,
            i_pk_columns            => i_pk_columns,
            i_pk_types              => i_pk_types,
            i_table_alias           => i_table_alias,
            i_log_level             => i_log_level,
            i_log_every_chunk       => i_log_every_chunk
        );
    ELSE
        RAISE EXCEPTION 'You should not have got here with a pk of % column', CARDINALITY(i_pk_columns);
    END IF;
END;$$
;