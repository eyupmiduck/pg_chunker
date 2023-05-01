CREATE OR REPLACE PROCEDURE chunk_pgplsql.execute_dml(
    i_driving_schema_name   IN VARCHAR,
    i_driving_table_name    IN VARCHAR,
    i_statement_text        IN VARCHAR,
    i_run_name              IN VARCHAR,
    i_chunk_size            IN INTEGER DEFAULT 1000,
    i_table_alias           IN VARCHAR DEFAULT 't',
    i_log_level             IN INTEGER DEFAULT 2,
    i_log_every_chunk       IN INTEGER DEFAULT 100,
    i_suppress_run_id_log   IN BOOLEAN DEFAULT FALSE
)
LANGUAGE plpgsql
AS $$
DECLARE
    l_run_id                INTEGER;
    l_driving_schema_name   VARCHAR(63);
    l_driving_table_name    VARCHAR(63);
    l_start_chunk           INTEGER;
    l_number_of_chunks      INTEGER;
    l_pk_columns            VARCHAR[];
    l_pk_types              VARCHAR[];
BEGIN
    CALL chunk_pgplsql_lib.validate_param_not_null(
        i_param_name    => 'i_driving_schema_name',
        i_param_value   => i_driving_schema_name
    );
    CALL chunk_pgplsql_lib.validate_param_not_null(
        i_param_name    => 'i_driving_table_name',
        i_param_value   => i_driving_table_name
    );
    CALL chunk_pgplsql_lib.validate_param_not_null(
        i_param_name    => 'i_statement_text',
        i_param_value   => i_statement_text
    );
    CALL chunk_pgplsql_lib.validate_param_not_null(
        i_param_name    => 'i_run_name',
        i_param_value   => i_run_name
    );
    CALL chunk_pgplsql_lib.validate_param_not_null(
        i_param_name    => 'i_chunk_size',
        i_param_value   => i_chunk_size
    );
    CALL chunk_pgplsql_lib.validate_param_not_null(
        i_param_name    => 'i_table_alias',
        i_param_value   => i_table_alias
    );

    l_driving_schema_name:= QUOTE_IDENT(i_driving_schema_name);
    l_driving_table_name:= QUOTE_IDENT(i_driving_table_name);
    CALL chunk_pgplsql_lib.validate_statement_text(
        i_statement_text => i_statement_text
    );
    CALL chunk_pgplsql_lib.register_chunk_run(
        i_driving_schema_name   => l_driving_schema_name,
        i_driving_table_name    => l_driving_table_name,
        i_chunk_size            => i_chunk_size,
        i_run_name              => i_run_name,
        i_log_level             => i_log_level,
        i_suppress_run_id_log   => i_suppress_run_id_log,
        o_run_id                => l_run_id,
        o_start_chunk           => l_start_chunk,
        o_number_of_chunks      => l_number_of_chunks,
        o_pk_columns            => l_pk_columns,
        o_pk_types              => l_pk_types
    );
    CALL chunk_pgplsql_lib.execute_chunks(
        i_driving_schema_name   => l_driving_schema_name,
        i_driving_table_name    => l_driving_table_name,
        i_statement_text        => i_statement_text,
        i_run_id                => l_run_id,
        i_start_chunk           => l_start_chunk,
        i_number_of_chunks      => l_number_of_chunks,
        i_pk_columns            => l_pk_columns,
        i_pk_types              => l_pk_types,
        i_table_alias           => i_table_alias,
        i_log_level             => i_log_level,
        i_log_every_chunk       => i_log_every_chunk
    );
END;$$
;