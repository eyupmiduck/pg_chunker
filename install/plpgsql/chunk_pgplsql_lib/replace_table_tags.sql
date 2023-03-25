CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.replace_table_tags(
    i_driving_schema_name   IN     VARCHAR,
    i_driving_table_name    IN     VARCHAR,
    i_table_alias           IN     VARCHAR,
    io_stmt                 IN OUT VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    CALL chunk_pgplsql_lib.p_replace(
        io_source   => io_stmt,
        i_old       => chunk_pgplsql_const.driving_table_tag(),
        i_new       => i_driving_schema_name||'.'||i_driving_table_name||' '||i_table_alias
    );
END;$$
;