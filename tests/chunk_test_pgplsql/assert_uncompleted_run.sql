CREATE OR REPLACE PROCEDURE chunk_test_pgplsql.assert_uncompleted_run(
    i_run_name              IN VARCHAR,
    i_chunk_size            IN INTEGER,
    i_completed_chunks      IN INTEGER,
    i_uncompleted_chunks    IN INTEGER
)
LANGUAGE plpgsql
AS $$
DECLARE
    l_chunk_number  INTEGER;
    l_count         INTEGER;
BEGIN
    SELECT b.chunk_number
    INTO STRICT l_chunk_number
    FROM chunk_data.chunk_run r,
         chunk_data.chunk_boundary b
    WHERE r.run_name = i_run_name
    AND   r.chunk_size = i_chunk_size
    AND   r.id = b.chunk_run_id
    AND   r.end_timestamp IS NULL
    AND   b.chunk_number = i_completed_chunks + 1
    AND   b.end_timestamp IS NULL;

    SELECT COUNT(1)
    INTO STRICT l_count
    FROM chunk_data.chunk_run r,
         chunk_data.chunk_boundary b
    WHERE r.run_name = i_run_name
    AND   r.chunk_size = i_chunk_size
    AND   r.id = b.chunk_run_id
    AND   r.end_timestamp IS NULL
    AND   b.end_timestamp IS NOT NULL;

    IF l_count <> i_completed_chunks THEN
        RAISE EXCEPTION 'Unexpected completed chunks %', l_count;
    END IF;

    SELECT COUNT(1)
    INTO STRICT l_count
    FROM chunk_data.chunk_run r,
         chunk_data.chunk_boundary b
    WHERE r.run_name = i_run_name
    AND   r.chunk_size = i_chunk_size
    AND   r.id = b.chunk_run_id
    AND   r.end_timestamp IS NULL
    AND   b.end_timestamp IS NULL;

    IF l_count <> i_uncompleted_chunks THEN
        RAISE EXCEPTION 'Unexpected uncompleted chunks %', l_count;
    END IF;

END;$$
;