# pg_chunker

A library to allow DML operations on a Postgres database to be broken up into smaller transactions.

## Description

A common scenario in applications that use a relational database is: "perform this DML statement on a large volume of data".  Quite often it would be ideal if the operation did not block any other transactions or at least block those transactions for a short period of time.  For example: you might want to run an update statement that touches every row in the table, but locking the entire table in a single operation is not ideal.  pg_chunker attempts to provide an API to allow DML statements to be split up into small transactions (chunks) inside a Postgres database.  pg_chunker uses its own set of tables to record progress of the execution of the chunks so that in the event of failure and a restart it will recover and resume from the "failed" chunk.

pg_chunker uses the concept of a "driving table" when executing DML. This table will be used to split the DML into chunks. When pg_chunker is used to run this query the following happens:

* The primary key of the table is scanned and sorted.
* Primary key values of every n'th row is inserted into a metadata table (by default n is 1000)
* The pg_chunker API will loop through the primary key ranges and generate dynamic SQL from the DML statement.  The dynamic DML SQL statements are executed.

Consider the following DML statement:

```sql
INSERT INTO public.cats(cat_name , cat_breed)
SELECT dog_name, dog_breed
FROM public.dogs
WHERE t.dog_breed = 'Cat'
```

If this statement is passed through the pg_chunker API the following happens.

* The primary key of the dogs table is scanned, sorted and ranges of the primary values are inserted into a tracking table
* A series of inserts into the cats table.
* The run is marked "complete"

Restrictions:

* A driving table must have a primary key.
* Only primary keys containing columns  of type ```VARCHAR```, ```INTEGER``` and ```TIMESTAMPTZ``` are supported.
* Only primary keys of one or two columns are supported.

## Getting Started

### Dependencies

* [Postgres](https://www.postgresql.org/) version 14.7 or above

### Installing

Inside the install directory run:

* ```psql -U postgres -d <your_database_name> -f schema/create_schemas.sql```
* ```psql -U postgres -d <your_database_name> -f schema/create_tables.sql```
* ```psql -U postgres -d <your_database_name> -f plpgsql/load_plpgsql.sql```
* ```psql -U postgres -d <your_database_name> -f schema/create_grants.sql```

## Executing the program

The stored procedure used for executing DML:

```sql
CREATE OR REPLACE PROCEDURE chunk_pgplsql.execute_dml(
    i_driving_schema_name   IN VARCHAR,
    i_driving_table_name    IN VARCHAR,
    i_statement_text        IN VARCHAR,
    i_run_name              IN VARCHAR,
    i_chunk_size            IN INTEGER DEFAULT 1000,
    i_table_alias           IN VARCHAR DEFAULT 't',
    i_log_level             IN INTEGER DEFAULT 2,
    i_log_every_chunk       IN INTEGER DEFAULT 100
)
```

| Parameter name | Description |
|--- |---
| ```i_driving_schema_name```|The name of the schema that owns the table that will drive the query |
| ```i_driving_table_name```|The name of the table that will drive the query |
| ```i_statement_text```|The DML statement |
| ```i_run_name```|A user defined name.  Mainly used to identify the statement in the event of a failure and restart |
| ```i_chunk_size```|The number of rows contained in  each chunk |
| ```i_table_alias```|The table alias of the driving table inside the query. |
| ```i_log_level```|Level of logging |
| ```i_log_every_chunk```|If logging chunk progress, the number number of chunks logged per log line |

Show the generated queries without executing any DML:

```sql
CREATE OR REPLACE PROCEDURE chunk_pgplsql.show_queries(
    i_driving_schema_name   IN VARCHAR,
    i_driving_table_name    IN VARCHAR,
    i_statement_text        IN VARCHAR,
    i_chunk_size            IN INTEGER DEFAULT 1000,
    i_table_alias           IN VARCHAR DEFAULT 't'
)
```

| Parameter name | Description |
|--- |---
| ```i_driving_schema_name```|The name of the schema that owns the table that will drive the query |
| ```i_driving_table_name```|The name of the table that will drive the query |
| ```i_statement_text```|The DML statement |
| ```i_chunk_size```|The number of rows contained in  each chunk |
| ```i_table_alias```|The table alias of the driving table inside the query. |

Show the status of a run:

```sql
CREATE OR REPLACE PROCEDURE chunk_pgplsql.show_run_status(
    i_run_id  IN INTEGER
)
```

| Parameter name | Description |
|--- |---
| ```i_run_id```|The id of the run.  Reported in  the log from the call to ```chunk_pgplsql.execute_dml``` |

Show the status of runs currently active:

```sql
CREATE OR REPLACE PROCEDURE chunk_pgplsql.show_active_run_status(
)
```

Show the status of all runs:

```sql
CREATE OR REPLACE PROCEDURE chunk_pgplsql.show_all_run_status(
)
```

Remove a run:

```sql
CREATE OR REPLACE PROCEDURE chunk_pgplsql.delete_run(
    i_run_id  IN INTEGER
)
```

| Parameter name | Description |
|--- |---
| ```i_run_id```|The id of the run.  Reported in  the log from the call to ```chunk_pgplsql.execute_dml``` |

## Example usage

The examples in this section will make use of the following tables

```sql
DROP TABLE IF EXISTS public.dog_shopping;
DROP TABLE IF EXISTS public.dogs;
DROP TABLE IF EXISTS public.cats;

CREATE TABLE IF NOT EXISTS public.dogs(
    id                      SERIAL NOT NULL,
    dog_name                VARCHAR(100) NOT NULL,
    dog_breed               VARCHAR(100) NOT NULL,
    has_snout               BOOLEAN,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.dog_shopping(
    id                      SERIAL NOT NULL,
    dog_id                  INTEGER NOT NULL,
    shopping_request        VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (dog_id) REFERENCES public.dogs
);

CREATE TABLE IF NOT EXISTS public.cats(
    id                      SERIAL NOT NULL,
    cat_name                VARCHAR(100) NOT NULL,
    cat_breed               VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO public.dogs(dog_name, dog_breed)
VALUES
    ('Prunella', 'Pug'),
    ('Millicent', 'Pug'),
    ('Daphne', 'French Bulldog'),
    ('Sally', 'Labrador'),
    ('Baby Sweet', 'Jack Russell Terrier'),
    ('Mollykins', 'Jack Russell Terrier'),
    ('Little Chicken', 'Jack Russell Terrier'),.
    ('Mister Nasty', 'Jack Russell Terrier'),
    ('Scully', 'Pug'),
    ('Tennison', 'Pug'),
    ('The F.L.S', 'Pug'),
    ('Lou', 'French Bulldog'),
    ('LeRoy', 'French Bulldog'),
    ('Bodie', 'Chihuahua'),
    ('Poppy', 'English Staffordshire Bull Terrier'),
    ('Chrissy', 'Random Terrier Mutt'),
    ('Hamilton', 'Cat'),
    ('Muggins', 'Cat')
;
```

Straight away we have made a mistake.  We inserted cats into the dogs table.  The following call will insert the cats into the correct table and commit every 1000 rows:

```sql
DO $$
BEGIN
    CALL chunk_pgplsql.execute_dml(
        i_driving_schema_name => 'public',
        i_driving_table_name  => 'dogs',
        i_statement_text      => '
            INSERT INTO public.cats(cat_name , cat_breed)
            SELECT dog_name, dog_breed
            FROM <driving_table>
            WHERE  <primary_key_range>
            AND t.dog_breed = ''Cat'' ',
        i_run_name            => 'insert_cats'
    );
END$$
;
```

Things to note here:

* ```<driving_table>``` is a tag used inside every statement passed to the ```chunk_pgplsql.execute_dml``` call.  This is the table used to "drive" the chunking operation.  This requires a primary key.  The primary key will be scanned and sorted into 1000 row chunks.
* ```<primary_key_range>``` is a tag used inside every statement passed to the ```chunk_pgplsql.execute_dml``` call.  Behind the scenes the pg_chunker API take the statement provided in the ```i_statement_text``` parameter and "injects" a set of filters that provide a range of rows inside a chunk.
* ```i_driving_schema_name``` the name of the schema of the driving table
* ```i_driving_table_name``` the name of the schema of the driving table
* ```i_run_name``` the name given by he user for this run.  In the event of a partial run the execution can be restarted by using the same run name.

We can also update data:

```sql
DO $$
BEGIN
    CALL chunk_pgplsql.execute_dml(
        i_driving_schema_name => 'public',
        i_driving_table_name  => 'dogs',
        i_statement_text      => '
            UPDATE <driving_table>
            SET has_snout = FALSE
            WHERE  <primary_key_range>
            AND t.dog_breed IN (''Pug'', ''French Bulldog'') ',
        i_run_name            => 'update_dogs'
    );
END$$
;
```

We can make our DML statements more complicated with subqueries and joins:

```sql
DO $$
BEGIN
    CALL chunk_pgplsql.execute_dml(
        i_driving_schema_name => 'public',
        i_driving_table_name  => 'dogs',
        i_statement_text      => '
            INSERT INTO public.dog_shopping(dog_id, shopping_request)
            SELECT id, ''Ball''
            FROM <driving_table>
            WHERE  <primary_key_range>
            AND dog_breed = ''English Staffordshire Bull Terrier''
            AND NOT EXISTS (
                SELECT 1
                FROM public.dog_shopping s
                WHERE s.dog_id = t.id
                AND   s.shopping_request = ''Ball''
            ) ',
        i_run_name            => 'update_dogs'
    );
END$$
;
```

## Future

* Support for 3 and 4 column primary keys
* Smaller commit sizes inside tables with 2+ column primary keys
* Parallelism probably implemented through the pg_background extension

## Author

[Lee Horner](mailto:lee@eyupmiduck.com)

## Version History

* 0.1
  * Initial Release

## License

This project is licensed under the GNU General Public License v3.0 - see the LICENSE.md file for details

## Acknowledgments

* [pgenv](https://github.com/theory/pgenv)
