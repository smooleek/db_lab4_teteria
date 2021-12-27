CREATE OR REPLACE PROCEDURE delim_edit()
LANGUAGE plpgsql AS
$$
  DECLARE
    counter record;
  BEGIN
    FOR counter IN
      SELECT launch_date
      FROM Processors
      WHERE launch_date
      LIKE '%-%-%'
    LOOP
      UPDATE Processors SET launch_date = REPLACE(launch_date,'-','/');
    END LOOP;
  END;
$$;