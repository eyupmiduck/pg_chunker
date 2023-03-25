CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.validate_param_not_null(
    i_param_name    IN VARCHAR,
    i_param_value   IN VARCHAR
)
LANGUAGE plpgsql
AS $$
DECLARE
BEGIN
    IF i_param_value IS NULL THEN
        RAISE EXCEPTION 'The paramter % should not be null', i_param_name;
    END IF;
END;$$
;

CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.validate_param_not_null(
    i_param_name    IN VARCHAR,
    i_param_value   IN INTEGER
)
LANGUAGE plpgsql
AS $$
DECLARE
BEGIN
    IF i_param_value IS NULL THEN
        RAISE EXCEPTION 'The paramter % should not be null', i_param_name;
    END IF;
END;$$
;
