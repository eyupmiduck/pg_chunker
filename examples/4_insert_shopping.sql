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
