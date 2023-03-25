CREATE OR REPLACE PROCEDURE chunk_pgplsql.delete_run(
    i_run_id  IN INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM chunk_data.chunk_boundry r
    WHERE r.chunk_run_id = i_run_id;
    DELETE FROM chunk_data.chunk_run r
    WHERE r.id = i_run_id;
END;$$
;