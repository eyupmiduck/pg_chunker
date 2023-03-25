GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA chunk_test_data_source TO chunk_run_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA chunk_test_data_target TO chunk_run_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA chunk_data TO chunk_test_pgplsql;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA chunk_test_data_source TO chunk_test_pgplsql;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA chunk_test_data_target TO chunk_test_pgplsql;

GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA chunk_test_pgplsql TO chunk_run_user;
GRANT EXECUTE ON ALL PROCEDURES IN SCHEMA chunk_test_pgplsql TO chunk_run_user;

GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA chunk_test_pgplsql TO chunk_run_user;
GRANT EXECUTE ON ALL PROCEDURES IN SCHEMA chunk_test_pgplsql TO chunk_run_user;
GRANT TRUNCATE ON ALL TABLES IN SCHEMA chunk_test_data_target TO chunk_run_user;

GRANT USAGE ON SCHEMA chunk_test_data_source TO chunk_run_user;
GRANT USAGE ON SCHEMA chunk_test_data_target TO chunk_run_user;
GRANT USAGE ON SCHEMA chunk_test_pgplsql TO chunk_run_user;