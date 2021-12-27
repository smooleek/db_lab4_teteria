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
    
CREATE OR REPLACE FUNCTION shorter() RETURNS trigger AS
$$
  BEGIN
    UPDATE Processors
    SET name = REPLACE(name, 'Ryzen ','R');

    UPDATE Processors
    SET product_line = REPLACE(product_line, 'Ryzen ','R');
  END;
$$ LANGUAGE 'plpgsql';

CREATE OR REPLACE TRIGGER shorters
AFTER INSERT ON Processors
FOR EACH ROW
EXECUTE FUNCTION shorter();

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

CALL delim_edit();

SELECT this_year_processors();
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
    
CREATE OR REPLACE FUNCTION shorter() RETURNS trigger AS
$$
  BEGIN
    UPDATE Processors
    SET name = REPLACE(name, 'Ryzen ','R');

    UPDATE Processors
    SET product_line = REPLACE(product_line, 'Ryzen ','R');
  	RETURN NULL;
  END;
$$ LANGUAGE 'plpgsql';

CREATE OR REPLACE TRIGGER shorters
AFTER INSERT ON Processors
FOR EACH ROW
EXECUTE FUNCTION shorter();

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

CALL delim_edit();

SELECT this_year_processors();

INSERT INTO Processors (name, launch_date, product_line, specifications_id, info)
    VALUES ('AMD Ryzen 9 6800 OEM Only', '2021-07-15', 'AMD Ryzen 7 Desktop Processors', '6', '6');
INSERT INTO Specifications (cores, threads, base_frequency)
  	VALUES (6, 12, 3700);
INSERT INTO info (url, vertical_segment)
  	VALUES ('https://www.amd.com/en/product/10471', 'Boxed Processor');