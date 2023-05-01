\set ON_ERROR_STOP on

CALL chunk_pgplsql.mark_runs_complete(i_run_name  => 'test_insert_test_table_int_int_int_pk');

CALL chunk_test_pgplsql.test_insert_test_table_int_int_int_pk(1000);

\q