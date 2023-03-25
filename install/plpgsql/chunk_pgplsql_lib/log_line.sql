CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.log_line(
    i_log_line      IN VARCHAR,
    i_log_level     IN INTEGER,
    i_call_type     IN INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF i_log_level >= i_call_type THEN
        RAISE NOTICE '%', i_log_line;
    END IF;
END;$$
;

CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.log_line(
    i_log_line      IN VARCHAR,
    i_expression_1  IN VARCHAR,
    i_log_level     IN INTEGER,
    i_call_type     IN INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF i_log_level >= i_call_type THEN
        RAISE NOTICE '%', REPLACE(i_log_line, '%', i_expression_1);
    END IF;
END;$$
;

CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.log_line(
    i_log_line      IN VARCHAR,
    i_expression_1  IN INTEGER,
    i_log_level     IN INTEGER,
    i_call_type     IN INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF i_log_level >= i_call_type THEN
        RAISE NOTICE '%', REPLACE(i_log_line, '%', i_expression_1::VARCHAR);
    END IF;
END;$$
;

