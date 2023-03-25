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
