/*
    Make sure an input query string has the  correct tags
*/
CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.validate_statement_text(
    i_statement_text        IN VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF chunk_pgplsql_lib.instr(i_statement_text, chunk_pgplsql_const.driving_table_tag()) = 0 THEN
        RAISE EXCEPTION 'Statement text does not contain a % tag', chunk_pgplsql_const.driving_table_tag();
    END IF;
    IF chunk_pgplsql_lib.instr(i_statement_text, chunk_pgplsql_const.driving_table_tag(), 1, 2) <> 0 THEN
        RAISE EXCEPTION 'Statement text contains more than one % tag', chunk_pgplsql_const.driving_table_tag();
    END IF;
    IF chunk_pgplsql_lib.instr(i_statement_text, chunk_pgplsql_const.primary_key_range_tag()) = 0 THEN
        RAISE EXCEPTION 'Statement text does not contain a % tag', chunk_pgplsql_const.primary_key_range_tag();
    END IF;
    IF chunk_pgplsql_lib.instr(i_statement_text, chunk_pgplsql_const.primary_key_range_tag(), 1, 2) <> 0 THEN
        RAISE EXCEPTION 'Statement text contains more than one % tag', chunk_pgplsql_const.primary_key_range_tag();
    END IF;
END;$$
;