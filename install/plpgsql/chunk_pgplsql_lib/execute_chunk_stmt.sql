/*
    A set of procedures that take a set of keys and uses the values as substitution  parameters for a dynamic statement
*/
CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.execute_chunk_stmt(
    i_key1  IN chunk_data.chunk_key,
    i_stmt  IN VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1);
    ELSE
        RAISE EXCEPTION 'unexpected type';
    END IF;
END;$$
;

CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.execute_chunk_stmt(
    i_key1  IN chunk_data.chunk_key,
    i_key2  IN chunk_data.chunk_key,
    i_stmt  IN VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2);
    ELSE
        RAISE EXCEPTION 'unexpected type';
    END IF;
END;$$
;

CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.execute_chunk_stmt(
    i_key1  IN chunk_data.chunk_key,
    i_key2  IN chunk_data.chunk_key,
    i_key3  IN chunk_data.chunk_key,
    i_stmt  IN VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3);
    ELSE
        RAISE EXCEPTION 'unexpected type';
    END IF;
END;$$
;

CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.execute_chunk_stmt(
    i_key1  IN chunk_data.chunk_key,
    i_key2  IN chunk_data.chunk_key,
    i_key3  IN chunk_data.chunk_key,
    i_key4  IN chunk_data.chunk_key,
    i_stmt  IN VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4);
    ELSE
        RAISE EXCEPTION 'unexpected type';
    END IF;
END;$$
;

CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.execute_chunk_stmt(
    i_key1  IN chunk_data.chunk_key,
    i_key2  IN chunk_data.chunk_key,
    i_key3  IN chunk_data.chunk_key,
    i_key4  IN chunk_data.chunk_key,
    i_key5  IN chunk_data.chunk_key,
    i_stmt  IN VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5);
    ELSE
        RAISE EXCEPTION 'unexpected type';
    END IF;
END;$$
;

CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.execute_chunk_stmt(
    i_key1  IN chunk_data.chunk_key,
    i_key2  IN chunk_data.chunk_key,
    i_key3  IN chunk_data.chunk_key,
    i_key4  IN chunk_data.chunk_key,
    i_key5  IN chunk_data.chunk_key,
    i_key6  IN chunk_data.chunk_key,
    i_stmt  IN VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_integer(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_varchar(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_integer(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_varchar(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_integer(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_varchar(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_integer(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_varchar(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_integer(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_integer(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_varchar(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_varchar(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_integer(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_integer(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_varchar(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_varchar(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSIF chunk_pgplsql_lib.is_timestamptz(i_key => i_key1)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key2)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key3)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key4)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key5)
    AND chunk_pgplsql_lib.is_timestamptz(i_key => i_key6)
    THEN
        EXECUTE i_stmt USING
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key1),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key2),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key3),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key4),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key5),
            chunk_pgplsql_lib.get_timestamptz(i_key => i_key6);
    ELSE
        RAISE EXCEPTION 'unexpected type';
    END IF;
END;$$
;
