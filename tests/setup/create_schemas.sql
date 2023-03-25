CREATE ROLE chunk_test_data_source;
CREATE ROLE chunk_test_data_target;
CREATE ROLE chunk_test_pgplsql;

CREATE SCHEMA IF NOT EXISTS AUTHORIZATION chunk_test_data_source;
CREATE SCHEMA IF NOT EXISTS AUTHORIZATION chunk_test_data_target;
CREATE SCHEMA IF NOT EXISTS AUTHORIZATION chunk_test_pgplsql;