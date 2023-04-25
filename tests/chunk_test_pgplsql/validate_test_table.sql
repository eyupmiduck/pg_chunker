/*
    runs a count on the source and target tables
    makes sure the  counts match
    runs diffs on teh data to ensure the rows have the same data
*/
CREATE OR REPLACE PROCEDURE chunk_test_pgplsql.validate_test_table(
    i_table_name IN VARCHAR
)
LANGUAGE plpgsql
AS $$
DECLARE
    l_select_cols   VARCHAR(4000);
    l_target_count  INTEGER;
BEGIN
    SELECT STRING_AGG(attname, ',') AS cols
    INTO STRICT l_select_cols
    FROM   pg_attribute
    WHERE  attrelid = (chunk_pgplsql_const.chunk_test_data_target_schema()||'.'||i_table_name)::regclass
    AND    attnum > 0
    AND    NOT attisdropped;

    EXECUTE 'SELECT COUNT(1) FROM '||chunk_pgplsql_const.chunk_test_data_target_schema()||'.'||i_table_name INTO l_target_count;
    IF l_target_count = 0 THEN
        RAISE EXCEPTION 'The table %.% has no rows', chunk_pgplsql_const.chunk_test_data_target_schema(), i_table_name;
    END IF;

    EXECUTE 'SELECT COUNT(1) FROM '||chunk_pgplsql_const.chunk_test_data_target_schema()||'.'||i_table_name INTO l_target_count;
    IF l_target_count = 0 THEN
        RAISE EXCEPTION 'The table %.% has no rows', chunk_pgplsql_const.chunk_test_data_target_schema(), i_table_name;
    END IF;

    EXECUTE '
        SELECT COUNT(1)
        FROM (
            SELECT '||l_select_cols||'
            FROM '||chunk_pgplsql_const.chunk_test_data_source_schema()||'.'||i_table_name||'
            EXCEPT
            SELECT '||l_select_cols||'
            FROM '||chunk_pgplsql_const.chunk_test_data_target_schema()||'.'||i_table_name||'
        ) t
    '
    INTO l_target_count;
    IF l_target_count <> 0 THEN
        RAISE EXCEPTION 'Count mismatch on source except target on % : %', i_table_name, l_target_count;
    END IF;

    EXECUTE '
        SELECT COUNT(1)
        FROM (
            SELECT '||l_select_cols||'
            FROM '||chunk_pgplsql_const.chunk_test_data_target_schema()||'.'||i_table_name||'
            EXCEPT
            SELECT '||l_select_cols||'
            FROM '||chunk_pgplsql_const.chunk_test_data_source_schema()||'.'||i_table_name||'
        ) t
    '
    INTO l_target_count;
    IF l_target_count <> 0 THEN
        RAISE EXCEPTION 'Count mismatch on target except source on % : %', i_table_name, l_target_count;
    END IF;

END;$$
;