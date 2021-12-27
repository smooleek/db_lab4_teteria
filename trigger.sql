CREATE OR REPLACE FUNCTION shorter() RETURNS trigger AS
$$
  BEGIN
    UPDATE Processors
    SET name = REPLACE(name, 'Ryzen ','R');

    UPDATE Processors
    SET product_line = REPLACE(product_line, 'Ryzen ','R');
  END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER shorters
AFTER INSERT ON Processors
FOR EACH ROW
EXECUTE FUNCTION shorter();