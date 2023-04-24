/*
    Replaces the column name tags with e actual column names inside the injected key range clauses
*/
CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.replace_tags_in_key_clause(
    i_pk_columns    IN     VARCHAR[],
    i_table_alias   IN     VARCHAR,
    io_stmt         IN OUT VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF CARDINALITY(i_pk_columns) >= 5
    OR CARDINALITY(i_pk_columns) < 1
    THEN
        RAISE EXCEPTION 'Unexpected key length %', CARDINALITY(i_pk_columns);
    END IF;
    CALL chunk_pgplsql_lib.p_replace(
        io_source   => io_stmt,
        i_old       => chunk_pgplsql_const.pk_key1_tag(),
        i_new       => i_pk_columns[1]
    );
    IF CARDINALITY(i_pk_columns) >= 2 THEN
        CALL chunk_pgplsql_lib.p_replace(
            io_source   => io_stmt,
            i_old       => chunk_pgplsql_const.pk_key2_tag(),
            i_new       => i_pk_columns[2]
        );
    END IF;
    IF CARDINALITY(i_pk_columns) >= 3 THEN
        CALL chunk_pgplsql_lib.p_replace(
            io_source   => io_stmt,
            i_old       => chunk_pgplsql_const.pk_key3_tag(),
            i_new       => i_pk_columns[3]
        );
    END IF;
    IF CARDINALITY(i_pk_columns) >= 4 THEN
        CALL chunk_pgplsql_lib.p_replace(
            io_source   => io_stmt,
            i_old       => chunk_pgplsql_const.pk_key3_tag(),
            i_new       => i_pk_columns[4]
        );
    END IF;
    CALL chunk_pgplsql_lib.p_replace(
        io_source   => io_stmt,
        i_old       => chunk_pgplsql_const.table_alias_tag(),
        i_new       => i_table_alias
    );

END;$$
;