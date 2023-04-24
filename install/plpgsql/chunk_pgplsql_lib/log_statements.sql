/*
    Log all the statements that will be used for the execution of the chunks.
*/
CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.log_statements(
    i_log_level         IN INTEGER,
    i_stmt_description  IN VARCHAR,
    i_stmt_1            IN VARCHAR,
    i_stmt_2            IN VARCHAR DEFAULT NULL,
    i_stmt_3            IN VARCHAR DEFAULT NULL,
    i_stmt_4            IN VARCHAR DEFAULT NULL,
    i_stmt_5            IN VARCHAR DEFAULT NULL,
    i_stmt_6            IN VARCHAR DEFAULT NULL,
    i_stmt_7            IN VARCHAR DEFAULT NULL,
    i_stmt_8            IN VARCHAR DEFAULT NULL,
    i_stmt_9            IN VARCHAR DEFAULT NULL
)
LANGUAGE plpgsql
AS $$
BEGIN
    CALL chunk_pgplsql_lib.log_line(
        i_log_line  => i_stmt_description,
        i_log_level => i_log_level,
        i_call_type => 1
    );
    IF i_stmt_1 IS NOT NULL THEN
        CALL chunk_pgplsql_lib.log_line(
            i_log_line      => '%',
            i_expression_1  => i_stmt_1,
            i_log_level     => i_log_level,
            i_call_type     => 1
        );
    END IF;
    IF i_stmt_2 IS NOT NULL THEN
        CALL chunk_pgplsql_lib.log_line(
            i_log_line      => '%',
            i_expression_1  => i_stmt_2,
            i_log_level     => i_log_level,
            i_call_type     => 1
        );
    END IF;
    IF i_stmt_3 IS NOT NULL THEN
        CALL chunk_pgplsql_lib.log_line(
            i_log_line      => '%',
            i_expression_1  => i_stmt_3,
            i_log_level     => i_log_level,
            i_call_type     => 1
        );
    END IF;
    IF i_stmt_4 IS NOT NULL THEN
        CALL chunk_pgplsql_lib.log_line(
            i_log_line      => '%',
            i_expression_1  => i_stmt_4,
            i_log_level     => i_log_level,
            i_call_type     => 1
        );
    END IF;
    IF i_stmt_5 IS NOT NULL THEN
        CALL chunk_pgplsql_lib.log_line(
            i_log_line      => '%',
            i_expression_1  => i_stmt_5,
            i_log_level     => i_log_level,
            i_call_type     => 1
        );
    END IF;
    IF i_stmt_6 IS NOT NULL THEN
        CALL chunk_pgplsql_lib.log_line(
            i_log_line      => '%',
            i_expression_1  => i_stmt_6,
            i_log_level     => i_log_level,
            i_call_type     => 1
        );
    END IF;
    IF i_stmt_7 IS NOT NULL THEN
        CALL chunk_pgplsql_lib.log_line(
            i_log_line      => '%',
            i_expression_1  => i_stmt_7,
            i_log_level     => i_log_level,
            i_call_type     => 1
        );
    END IF;
    IF i_stmt_8 IS NOT NULL THEN
        CALL chunk_pgplsql_lib.log_line(
            i_log_line      => '%',
            i_expression_1  => i_stmt_8,
            i_log_level     => i_log_level,
            i_call_type     => 1
        );
    END IF;
    IF i_stmt_9 IS NOT NULL THEN
        CALL chunk_pgplsql_lib.log_line(
            i_log_line      => '%',
            i_expression_1  => i_stmt_9,
            i_log_level     => i_log_level,
            i_call_type     => 1
        );
    END IF;
    CALL chunk_pgplsql_lib.log_line(
        i_log_line  => '=============='::VARCHAR,
        i_log_level => i_log_level,
        i_call_type => 1
    );
END;$$
;