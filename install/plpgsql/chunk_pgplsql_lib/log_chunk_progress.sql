CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.log_chunk_progress(
    i_current_chunk     IN INTEGER,
    i_number_of_chunks  IN INTEGER,
    i_log_level         IN INTEGER,
    i_log_every_chunk   IN INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF MOD(i_current_chunk, i_log_every_chunk) = 0
    OR i_current_chunk = i_number_of_chunks THEN
        CALL chunk_pgplsql_lib.log_line(
            i_log_line      => 'Processing chunk %',
            i_expression_1  => i_current_chunk,
            i_log_level     => i_log_level,
            i_call_type     => 2
        );
    END IF;
END;$$
;