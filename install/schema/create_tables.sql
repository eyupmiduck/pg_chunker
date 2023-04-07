DROP TABLE IF EXISTS chunk_data.chunk_boundary;
DROP TABLE IF EXISTS chunk_data.chunk_run;
DROP TYPE IF EXISTS chunk_data.chunk_key CASCADE;

CREATE TYPE chunk_data.chunk_key AS (
    integer_value       INTEGER,
    varchar_value       VARCHAR(4000),
    timestamptz_value   TIMESTAMP
);

CREATE TABLE IF NOT EXISTS chunk_data.chunk_run(
    id                      SERIAL NOT NULL,
    driving_schema_name     VARCHAR(63) NOT NULL,
    driving_table_name      VARCHAR(63) NOT NULL,
    chunk_size              INTEGER NOT NULL,
    number_of_chunks        INTEGER NOT NULL DEFAULT 0,
    last_completed_chunk    INTEGER NOT NULL DEFAULT 0,
    run_name                VARCHAR(400) NOT NULL,
    start_timestamp         TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    end_timestamp           TIMESTAMPTZ,
    PRIMARY KEY (id),
    UNIQUE (run_name, driving_schema_name, driving_table_name, chunk_size, end_timestamp),
    CONSTRAINT c_driving_schema_name        CHECK (LOWER(driving_schema_name) = driving_schema_name),
    CONSTRAINT c_driving_table_name         CHECK (LOWER(driving_table_name) = driving_table_name),
    CONSTRAINT c_chunk_run_chunk_size       CHECK (chunk_size >= 2),
    CONSTRAINT c_chunk_run_number_of_chunks CHECK (number_of_chunks >= 0),
    CONSTRAINT c_chunk_run_end_timestamp    CHECK (end_timestamp IS NULL OR end_timestamp >= start_timestamp)
);

CREATE TABLE IF NOT EXISTS chunk_data.chunk_boundary(
    chunk_run_id        INTEGER NOT NULL,
    chunk_number        INTEGER NOT NULL,
    pk_key1             chunk_data.chunk_key NOT NULL,
    pk_key2             chunk_data.chunk_key,
    pk_key3             chunk_data.chunk_key,
    end_timestamp       TIMESTAMPTZ,
    PRIMARY KEY (chunk_run_id, chunk_number),
    FOREIGN KEY (chunk_run_id) REFERENCES chunk_data.chunk_run
);