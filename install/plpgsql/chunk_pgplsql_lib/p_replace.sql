CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.p_replace(
    io_source   IN OUT VARCHAR,
    i_old       IN     VARCHAR,
    i_new       IN     VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    CALL chunk_pgplsql_lib.validate_param_not_null(
        i_param_name    => 'io_source',
        i_param_value   => io_source
    );
    CALL chunk_pgplsql_lib.validate_param_not_null(
        i_param_name    => 'i_old',
        i_param_value   => i_old
    );
    CALL chunk_pgplsql_lib.validate_param_not_null(
        i_param_name    => 'i_new',
        i_param_value   => i_new
    );
    io_source:= REPLACE(io_source, i_old, i_new);
END;$$
;