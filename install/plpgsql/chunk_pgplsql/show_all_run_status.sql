CREATE OR REPLACE PROCEDURE chunk_pgplsql.show_all_run_status(
)
LANGUAGE plpgsql
AS $$
DECLARE
    l_run_record    RECORD;
BEGIN
    RAISE NOTICE '==============================================';
    FOR l_run_record IN (
        SELECT r.*
        FROM chunk_data.chunk_run r
        ORDER BY r.id
    ) LOOP
        CALL chunk_pgplsql_lib.show_run_status_helper(
            i_run_id  => l_run_record.id
        );
    END LOOP;
END;$$
;