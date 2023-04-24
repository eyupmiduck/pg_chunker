/*
    Get all the possible statements that will be used to execute chunks on a table with 1 col pk
*/
CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.pk3_get_chunk_statements(
    i_driving_schema_name   IN  VARCHAR,
    i_driving_table_name    IN  VARCHAR,
    i_statement_text        IN  VARCHAR,
    i_pk_columns            IN  VARCHAR[],
    i_pk_types              IN  VARCHAR[],
    i_table_alias           IN  VARCHAR,
    i_log_level             IN  INTEGER,
    o_k1_e_k2_e_k3_n_stmt   OUT VARCHAR,
    o_k1_e_k2_n_1_stmt      OUT VARCHAR,
    o_k1_e_k2_n_2_stmt      OUT VARCHAR,
    o_k1_e_k2_n_3_stmt      OUT VARCHAR,
    o_k1_n_1_stmt           OUT VARCHAR,
    o_k1_n_2_stmt           OUT VARCHAR,
    o_k1_n_3_stmt           OUT VARCHAR,
    o_k1_n_4_stmt           OUT VARCHAR,
    o_k1_n_5_stmt           OUT VARCHAR,
    o_final_stmt            OUT VARCHAR
)
LANGUAGE plpgsql
AS $$
DECLARE
    l_k1_e_k2_e_k3_n_key    VARCHAR(65535);

    l_k1_e_k2_n_1_key       VARCHAR(65535);
    l_k1_e_k2_n_2_key       VARCHAR(65535);
    l_k1_e_k2_n_3_key       VARCHAR(65535);

    l_k1_n_1_key            VARCHAR(65535);
    l_k1_n_2_key            VARCHAR(65535);
    l_k1_n_3_key            VARCHAR(65535);
    l_k1_n_4_key            VARCHAR(65535);
    l_k1_n_5_key            VARCHAR(65535);

    l_final_key             VARCHAR(65535);
BEGIN
    o_k1_e_k2_e_k3_n_stmt   := i_statement_text;

    o_k1_e_k2_n_1_stmt      := i_statement_text;
    o_k1_e_k2_n_2_stmt      := i_statement_text;
    o_k1_e_k2_n_3_stmt      := i_statement_text;

    o_k1_n_1_stmt           := i_statement_text;
    o_k1_n_2_stmt           := i_statement_text;
    o_k1_n_3_stmt           := i_statement_text;
    o_k1_n_4_stmt           := i_statement_text;
    o_k1_n_5_stmt           := i_statement_text;

    o_final_stmt            := i_statement_text;

    l_k1_e_k2_e_k3_n_key :=
                '('    ||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key1_tag()||' = $1 '||
                ' AND '||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key2_tag()||' = $2 '||
                ' AND '||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key3_tag()||' >= $3 '||
                ' AND '||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key3_tag()||' < $4 '||
                ')';

    l_k1_e_k2_n_1_key :=
                '('    ||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key1_tag()||' = $1 '||
                ' AND '||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key2_tag()||' = $2 '||
                ' AND '||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key3_tag()||' >= $3 '||
                ')';
    l_k1_e_k2_n_2_key :=
                '('    ||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key1_tag()||' = $1 '||
                ' AND '||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key2_tag()||' > $2 '||
                ' AND '||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key2_tag()||' < $3 '||
                ')';
    l_k1_e_k2_n_3_key :=
                '('    ||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key1_tag()||' = $1 '||
                ' AND '||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key2_tag()||' = $2 '||
                ' AND '||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key3_tag()||' < $3 '||
                ')';

    l_k1_n_1_key :=
                '('    ||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key1_tag()||' = $1 '||
                ' AND '||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key2_tag()||' = $2 '||
                ' AND '||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key3_tag()||' >= $3 '||
                ')';
    l_k1_n_2_key :=
                '('    ||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key1_tag()||' = $1 '||
                ' AND '||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key2_tag()||' > $2 '||
                ')';
    l_k1_n_3_key :=
                '('    ||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key1_tag()||' > $1 '||
                ' AND '||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key1_tag()||' < $2 '||
                ')';
    l_k1_n_4_key :=
                '('    ||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key1_tag()||' = $1 '||
                ' AND '||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key2_tag()||' < $2 '||
                ')';
    l_k1_n_5_key :=
                '('    ||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key1_tag()||' = $1 '||
                ' AND '||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key2_tag()||' = $2 '||
                ' AND '||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key3_tag()||' < $3 '||
                ')';

    l_final_key :=
                '('    ||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key1_tag()||' = $1'||
                ' AND '||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key2_tag()||' = $1'||
                ' AND '||chunk_pgplsql_const.table_alias_tag()||'.'||chunk_pgplsql_const.pk_key3_tag()||' = $3'||
                ')';

    CALL chunk_pgplsql_lib.replace_tags_in_key_clause(
        i_pk_columns    => i_pk_columns,
        i_table_alias   => i_table_alias,
        io_stmt         => l_k1_e_k2_e_k3_n_key
    );

    CALL chunk_pgplsql_lib.replace_tags_in_key_clause(
        i_pk_columns    => i_pk_columns,
        i_table_alias   => i_table_alias,
        io_stmt         => l_k1_e_k2_n_1_key
    );
    CALL chunk_pgplsql_lib.replace_tags_in_key_clause(
        i_pk_columns    => i_pk_columns,
        i_table_alias   => i_table_alias,
        io_stmt         => l_k1_e_k2_n_2_key
    );
    CALL chunk_pgplsql_lib.replace_tags_in_key_clause(
        i_pk_columns    => i_pk_columns,
        i_table_alias   => i_table_alias,
        io_stmt         => l_k1_e_k2_n_3_key
    );

    CALL chunk_pgplsql_lib.replace_tags_in_key_clause(
        i_pk_columns    => i_pk_columns,
        i_table_alias   => i_table_alias,
        io_stmt         => l_k1_n_1_key
    );
    CALL chunk_pgplsql_lib.replace_tags_in_key_clause(
        i_pk_columns    => i_pk_columns,
        i_table_alias   => i_table_alias,
        io_stmt         => l_k1_n_2_key
    );
    CALL chunk_pgplsql_lib.replace_tags_in_key_clause(
        i_pk_columns    => i_pk_columns,
        i_table_alias   => i_table_alias,
        io_stmt         => l_k1_n_3_key
    );
    CALL chunk_pgplsql_lib.replace_tags_in_key_clause(
        i_pk_columns    => i_pk_columns,
        i_table_alias   => i_table_alias,
        io_stmt         => l_k1_n_4_key
    );
    CALL chunk_pgplsql_lib.replace_tags_in_key_clause(
        i_pk_columns    => i_pk_columns,
        i_table_alias   => i_table_alias,
        io_stmt         => l_k1_n_5_key
    );

    CALL chunk_pgplsql_lib.replace_tags_in_key_clause(
        i_pk_columns    => i_pk_columns,
        i_table_alias   => i_table_alias,
        io_stmt         => l_final_key
    );

    CALL chunk_pgplsql_lib.p_replace(
        io_source   => o_k1_e_k2_e_k3_n_stmt,
        i_old       => chunk_pgplsql_const.primary_key_range_tag(),
        i_new       => l_k1_e_k2_e_k3_n_key
    );

    CALL chunk_pgplsql_lib.p_replace(
        io_source   => o_k1_e_k2_n_1_stmt,
        i_old       => chunk_pgplsql_const.primary_key_range_tag(),
        i_new       => l_k1_e_k2_n_1_key
    );
    CALL chunk_pgplsql_lib.p_replace(
        io_source   => o_k1_e_k2_n_2_stmt,
        i_old       => chunk_pgplsql_const.primary_key_range_tag(),
        i_new       => l_k1_e_k2_n_2_key
    );
    CALL chunk_pgplsql_lib.p_replace(
        io_source   => o_k1_e_k2_n_3_stmt,
        i_old       => chunk_pgplsql_const.primary_key_range_tag(),
        i_new       => l_k1_e_k2_n_3_key
    );

    CALL chunk_pgplsql_lib.p_replace(
        io_source   => o_k1_n_1_stmt,
        i_old       => chunk_pgplsql_const.primary_key_range_tag(),
        i_new       => l_k1_n_1_key
    );
    CALL chunk_pgplsql_lib.p_replace(
        io_source   => o_k1_n_2_stmt,
        i_old       => chunk_pgplsql_const.primary_key_range_tag(),
        i_new       => l_k1_n_2_key
    );
    CALL chunk_pgplsql_lib.p_replace(
        io_source   => o_k1_n_3_stmt,
        i_old       => chunk_pgplsql_const.primary_key_range_tag(),
        i_new       => l_k1_n_3_key
    );
    CALL chunk_pgplsql_lib.p_replace(
        io_source   => o_k1_n_4_stmt,
        i_old       => chunk_pgplsql_const.primary_key_range_tag(),
        i_new       => l_k1_n_4_key
    );
    CALL chunk_pgplsql_lib.p_replace(
        io_source   => o_k1_n_5_stmt,
        i_old       => chunk_pgplsql_const.primary_key_range_tag(),
        i_new       => l_k1_n_5_key
    );

    CALL chunk_pgplsql_lib.p_replace(
        io_source   => o_final_stmt,
        i_old       => chunk_pgplsql_const.primary_key_range_tag(),
        i_new       => l_final_key
    );

    CALL chunk_pgplsql_lib.replace_table_tags(
        i_driving_schema_name   => i_driving_schema_name,
        i_driving_table_name    => i_driving_table_name,
        i_table_alias           => i_table_alias,
        io_stmt                 => o_k1_e_k2_e_k3_n_stmt
    );

    CALL chunk_pgplsql_lib.replace_table_tags(
        i_driving_schema_name   => i_driving_schema_name,
        i_driving_table_name    => i_driving_table_name,
        i_table_alias           => i_table_alias,
        io_stmt                 => o_k1_e_k2_n_1_stmt
    );
    CALL chunk_pgplsql_lib.replace_table_tags(
        i_driving_schema_name   => i_driving_schema_name,
        i_driving_table_name    => i_driving_table_name,
        i_table_alias           => i_table_alias,
        io_stmt                 => o_k1_e_k2_n_2_stmt
    );
    CALL chunk_pgplsql_lib.replace_table_tags(
        i_driving_schema_name   => i_driving_schema_name,
        i_driving_table_name    => i_driving_table_name,
        i_table_alias           => i_table_alias,
        io_stmt                 => o_k1_e_k2_n_3_stmt
    );

    CALL chunk_pgplsql_lib.replace_table_tags(
        i_driving_schema_name   => i_driving_schema_name,
        i_driving_table_name    => i_driving_table_name,
        i_table_alias           => i_table_alias,
        io_stmt                 => o_k1_n_1_stmt
    );
    CALL chunk_pgplsql_lib.replace_table_tags(
        i_driving_schema_name   => i_driving_schema_name,
        i_driving_table_name    => i_driving_table_name,
        i_table_alias           => i_table_alias,
        io_stmt                 => o_k1_n_2_stmt
    );
    CALL chunk_pgplsql_lib.replace_table_tags(
        i_driving_schema_name   => i_driving_schema_name,
        i_driving_table_name    => i_driving_table_name,
        i_table_alias           => i_table_alias,
        io_stmt                 => o_k1_n_3_stmt
    );
    CALL chunk_pgplsql_lib.replace_table_tags(
        i_driving_schema_name   => i_driving_schema_name,
        i_driving_table_name    => i_driving_table_name,
        i_table_alias           => i_table_alias,
        io_stmt                 => o_k1_n_4_stmt
    );
    CALL chunk_pgplsql_lib.replace_table_tags(
        i_driving_schema_name   => i_driving_schema_name,
        i_driving_table_name    => i_driving_table_name,
        i_table_alias           => i_table_alias,
        io_stmt                 => o_k1_n_5_stmt
    );

    CALL chunk_pgplsql_lib.replace_table_tags(
        i_driving_schema_name   => i_driving_schema_name,
        i_driving_table_name    => i_driving_table_name,
        i_table_alias           => i_table_alias,
        io_stmt                 => o_final_stmt
    );

    CALL chunk_pgplsql_lib.log_line(
        i_log_line  => '=============='::VARCHAR,
        i_log_level => i_log_level,
        i_call_type => 1
    );
    CALL chunk_pgplsql_lib.log_statements(
        i_log_level         => i_log_level,
        i_stmt_description  => 'Key 1 equal Key 2 equal Key 3 not equal statement',
        i_stmt_1            => o_k1_e_k2_e_k3_n_stmt
    );
    CALL chunk_pgplsql_lib.log_statements(
        i_log_level         => i_log_level,
        i_stmt_description  => 'Key 1 equal Key 2 not equal statements',
        i_stmt_1            => o_k1_e_k2_n_1_stmt,
        i_stmt_2            => o_k1_e_k2_n_1_stmt,
        i_stmt_3            => o_k1_e_k2_n_1_stmt
    );
    CALL chunk_pgplsql_lib.log_statements(
        i_log_level         => i_log_level,
        i_stmt_description  => 'Key 1 not equal statements',
        i_stmt_1            => o_k1_n_1_stmt,
        i_stmt_2            => o_k1_n_2_stmt,
        i_stmt_3            => o_k1_n_3_stmt,
        i_stmt_4            => o_k1_n_4_stmt,
        i_stmt_5            => o_k1_n_5_stmt
    );
    CALL chunk_pgplsql_lib.log_statements(
        i_log_level         => i_log_level,
        i_stmt_description  => 'Final row statement',
        i_stmt_1            => o_final_stmt
    );

END;$$
;