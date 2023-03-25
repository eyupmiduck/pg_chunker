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
