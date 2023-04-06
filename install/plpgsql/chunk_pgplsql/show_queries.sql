CREATE OR REPLACE PROCEDURE chunk_pgplsql.show_queries(
    i_driving_schema_name   IN VARCHAR,
    i_driving_table_name    IN VARCHAR,
    i_statement_text        IN VARCHAR,
    i_chunk_size            IN INTEGER DEFAULT 1000,
    i_table_alias           IN VARCHAR DEFAULT 't'
)
LANGUAGE plpgsql
AS $$
DECLARE
    l_driving_schema_name       VARCHAR(63);
    l_driving_table_name        VARCHAR(63);
    l_pk_columns                VARCHAR[];
    l_pk_types                  VARCHAR[];
    l_insert_chunks_statement   VARCHAR(4000);
    l_stmt_1                    VARCHAR(65535);
    l_stmt_2                    VARCHAR(65535);
    l_stmt_3                    VARCHAR(65535);
    l_stmt_4                    VARCHAR(65535);
    l_stmt_5                    VARCHAR(65535);
    l_stmt_6                    VARCHAR(65535);
    l_stmt_7                    VARCHAR(65535);
    l_stmt_8                    VARCHAR(65535);
    l_stmt_9                    VARCHAR(65535);
    l_stmt_10                   VARCHAR(65535);
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

    CALL chunk_pgplsql_lib.validate_driving_table(
        i_driving_schema_name   => l_driving_schema_name,
        i_driving_table_name    => l_driving_table_name,
        o_pk_columns            => l_pk_columns,
        o_pk_types              => l_pk_types
    );

    CALL chunk_pgplsql_lib.get_chunk_range_query(
        i_driving_schema_name       => l_driving_schema_name,
        i_driving_table_name        => l_driving_table_name,
        i_pk_columns                => l_pk_columns,
        i_pk_types                  => l_pk_types,
        i_log_level                 => 6,
        i_chunk_size                => i_chunk_size,
        o_insert_chunks_statement   => l_insert_chunks_statement
    );

    IF CARDINALITY(l_pk_columns) = 1 THEN
        CALL chunk_pgplsql_lib.pk1_get_chunk_statements(
            i_driving_schema_name   => l_driving_schema_name,
            i_driving_table_name    => l_driving_table_name,
            i_statement_text        => i_statement_text,
            i_pk_columns            => l_pk_columns,
            i_pk_types              => l_pk_types,
            i_table_alias           => i_table_alias,
            i_log_level             => 6,
            o_k1_n_stmt             => l_stmt_1,
            o_final_stmt            => l_stmt_2
        );
    ELSIF CARDINALITY(l_pk_columns) = 2 THEN
        CALL chunk_pgplsql_lib.pk2_get_chunk_statements(
            i_driving_schema_name   => l_driving_schema_name,
            i_driving_table_name    => l_driving_table_name,
            i_statement_text        => i_statement_text,
            i_pk_columns            => l_pk_columns,
            i_pk_types              => l_pk_types,
            i_table_alias           => i_table_alias,
            i_log_level             => 6,
            o_k1_e_k2_n_key_stmt    => l_stmt_1,
            o_k1_n_1_stmt           => l_stmt_2,
            o_k1_n_2_stmt           => l_stmt_3,
            o_k1_n_3_stmt           => l_stmt_4,
            o_final_stmt            => l_stmt_5
        );
    ELSIF CARDINALITY(l_pk_columns) = 3 THEN
        CALL chunk_pgplsql_lib.pk3_get_chunk_statements(
            i_driving_schema_name   => l_driving_schema_name,
            i_driving_table_name    => l_driving_table_name,
            i_statement_text        => i_statement_text,
            i_pk_columns            => l_pk_columns,
            i_pk_types              => l_pk_types,
            i_table_alias           => i_table_alias,
            i_log_level             => 6,
            o_k1_e_k2_e_k3_n_stmt   => l_stmt_1,
            o_k1_e_k2_n_1_stmt      => l_stmt_2,
            o_k1_e_k2_n_2_stmt      => l_stmt_3,
            o_k1_e_k2_n_3_stmt      => l_stmt_4,
            o_k1_n_1_stmt           => l_stmt_5,
            o_k1_n_2_stmt           => l_stmt_6,
            o_k1_n_3_stmt           => l_stmt_7,
            o_k1_n_4_stmt           => l_stmt_8,
            o_k1_n_5_stmt           => l_stmt_9,
            o_final_stmt            => l_stmt_10
        );
    ELSE
        RAISE EXCEPTION 'You should not have got here with a pk of % column', CARDINALITY(i_pk_columns);
    END IF;

END;$$
;