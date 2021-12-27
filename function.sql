CREATE OR REPLACE FUNCTION this_year_processors() RETURNS int AS
    $$
        DECLARE
            this_year integer;
        BEGIN
            SELECT COUNT(*) INTO this_year
            FROM Processors
      WHERE launch_date LIKE '2021/%';
            
            RETURN this_year;
        END;
    $$ LANGUAGE 'plpgsql';