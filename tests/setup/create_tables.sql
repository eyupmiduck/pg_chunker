DROP TABLE IF EXISTS chunk_test_data_source.test_table_int_pk;
DROP TABLE IF EXISTS chunk_test_data_target.test_table_int_pk;
DROP TABLE IF EXISTS chunk_test_data_source.test_table_int_int_pk;
DROP TABLE IF EXISTS chunk_test_data_target.test_table_int_int_pk;
DROP TABLE IF EXISTS chunk_test_data_source.test_table_v_pk;
DROP TABLE IF EXISTS chunk_test_data_target.test_table_v_pk;
DROP TABLE IF EXISTS chunk_test_data_source.test_table_t_pk;
DROP TABLE IF EXISTS chunk_test_data_target.test_table_t_pk;

CREATE TABLE IF NOT EXISTS chunk_test_data_source.test_table_int_pk(
    key1        INTEGER NOT NULL,
    row_value   INTEGER NOT NULL,
    divisor     INTEGER,
    PRIMARY KEY (key1)
);

CREATE TABLE IF NOT EXISTS chunk_test_data_target.test_table_int_pk(
    key1        INTEGER NOT NULL,
    row_value   INTEGER NOT NULL,
    PRIMARY KEY (key1)
);

CREATE TABLE IF NOT EXISTS chunk_test_data_source.test_table_t_pk(
    key1        TIMESTAMPTZ NOT NULL,
    row_value   INTEGER NOT NULL,
    divisor     INTEGER,
    PRIMARY KEY (key1)
);

CREATE TABLE IF NOT EXISTS chunk_test_data_target.test_table_t_pk(
    key1        TIMESTAMPTZ NOT NULL,
    row_value   INTEGER NOT NULL,
    PRIMARY KEY (key1)
);

CREATE TABLE IF NOT EXISTS chunk_test_data_target.test_table_v_pk(
    key1        VARCHAR(100) NOT NULL,
    row_value   INTEGER NOT NULL,
    PRIMARY KEY (key1)
);

CREATE TABLE IF NOT EXISTS chunk_test_data_source.test_table_v_pk(
    key1        VARCHAR(100) NOT NULL,
    row_value   INTEGER NOT NULL,
    divisor     INTEGER,
    PRIMARY KEY (key1)
);

CREATE TABLE IF NOT EXISTS chunk_test_data_source.test_table_int_int_pk(
    key1        INTEGER NOT NULL,
    key2        INTEGER NOT NULL,
    row_value   INTEGER NOT NULL,
    divisor     INTEGER,
    PRIMARY KEY (key1, key2)
);

CREATE TABLE IF NOT EXISTS chunk_test_data_target.test_table_int_int_pk(
    key1        INTEGER NOT NULL,
    key2        INTEGER NOT NULL,
    row_value   INTEGER NOT NULL,
    PRIMARY KEY (key1, key2)
);