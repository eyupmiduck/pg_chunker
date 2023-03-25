CREATE OR REPLACE PROCEDURE chunk_pgplsql_lib.validate_driving_table(
    i_driving_schema_name IN  VARCHAR,
    i_driving_table_name  IN  VARCHAR,
    o_pk_columns          OUT VARCHAR[],
    o_pk_types            OUT VARCHAR[]
)
LANGUAGE plpgsql
AS $$
DECLARE
    l_qualified_table_name  VARCHAR(130);
    l_dummy                 INTEGER;
    l_pk_type               VARCHAR(100);
    l_pk_column_pos         INTEGER;
    l_column_rec            RECORD;
BEGIN
    l_qualified_table_name:= i_driving_schema_name||'.'||i_driving_table_name;
    BEGIN
        SELECT 1
        INTO STRICT l_dummy
        FROM information_schema.tables t
        WHERE t.table_schema = i_driving_schema_name
        AND   t.table_name = i_driving_table_name;
    EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE EXCEPTION 'No such table %', l_qualified_table_name;
    END;

    BEGIN
        SELECT 1
        INTO STRICT l_dummy
        FROM information_schema.table_constraints tc
        WHERE constraint_schema = LOWER(i_driving_schema_name)
        AND table_name = LOWER(i_driving_table_name)
        AND constraint_type = 'PRIMARY KEY';
    EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE EXCEPTION 'No primary key on table %', l_qualified_table_name;
    END;

    l_pk_column_pos:= 0;
    FOR l_column_rec IN (
        SELECT a.attname, format_type(a.atttypid, a.atttypmod) AS data_type
        FROM   pg_index i
        JOIN   pg_attribute a ON a.attrelid = i.indrelid
                            AND a.attnum = ANY(i.indkey)
        WHERE  i.indrelid = l_qualified_table_name::regclass
        AND    i.indisprimary
        ORDER BY a.attnum
    ) LOOP
        l_pk_column_pos:= l_pk_column_pos + 1;
        o_pk_columns[l_pk_column_pos] := l_column_rec.attname;
        o_pk_types[l_pk_column_pos] := l_column_rec.data_type;
        IF o_pk_types[l_pk_column_pos] LIKE chunk_pgplsql_const.varchar_type()||'%' THEN
            o_pk_types[l_pk_column_pos]:= chunk_pgplsql_const.varchar_type();
        END IF;
    END LOOP;
    IF CARDINALITY(o_pk_columns) NOT IN (1,2) THEN
        RAISE EXCEPTION 'Only supports primary keys of 1 or 2 columns. Table % has a PK of %', l_qualified_table_name, CARDINALITY(o_pk_columns);
    END IF;

    FOREACH l_pk_type IN ARRAY o_pk_types LOOP
        IF l_pk_type <> chunk_pgplsql_const.integer_type()
        AND l_pk_type <> chunk_pgplsql_const.varchar_type()
        AND l_pk_type <> chunk_pgplsql_const.timestamptz_type() THEN
            RAISE EXCEPTION 'Only supports primary keys of type timestamptz, integer and varchar. % has %', l_qualified_table_name, l_pk_type;
        END IF;
    END LOOP;

END;$$
;