GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA chunk_data TO chunk_run_user;

GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA chunk_pgplsql TO chunk_run_user;
GRANT EXECUTE ON ALL PROCEDURES IN SCHEMA chunk_pgplsql TO chunk_run_user;

GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA chunk_pgplsql_lib TO chunk_run_user;
GRANT EXECUTE ON ALL PROCEDURES IN SCHEMA chunk_pgplsql_lib TO chunk_run_user;

GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA chunk_pgplsql_const TO chunk_run_user;
GRANT EXECUTE ON ALL PROCEDURES IN SCHEMA chunk_pgplsql_const TO chunk_run_user;

GRANT USAGE ON SCHEMA chunk_pgplsql TO chunk_run_user;
GRANT USAGE ON SCHEMA chunk_pgplsql_lib TO chunk_run_user;
GRANT USAGE ON SCHEMA chunk_pgplsql_const TO chunk_run_user;
GRANT USAGE ON SCHEMA chunk_data TO chunk_run_user;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA chunk_data TO chunk_run_user;
GRANT USAGE ON TYPE chunk_data.chunk_key TO chunk_run_user;