CREATE OR REPLACE PROCEDURE chunk_pgplsql.show_run_status(
    i_run_id  IN INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    RAISE NOTICE '==============================================';
    CALL chunk_pgplsql_lib.show_run_status_helper(
        i_run_id  => i_run_id
    );
END;$$
;