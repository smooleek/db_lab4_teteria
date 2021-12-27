-- Specifications
INSERT INTO Specifications (cores, threads, base_frequency)
  	VALUES (16, 32, 3400);
INSERT INTO Specifications (cores, threads, base_frequency)
  	VALUES (12, 24, 3700);
INSERT INTO Specifications (cores, threads, base_frequency)
  	VALUES (12, 24, 3000);
INSERT INTO Specifications (cores, threads, base_frequency)
  	VALUES (8, 16, 3800);
INSERT INTO Specifications (cores, threads, base_frequency)
  	VALUES (6, 12, 3700);
-- Info
INSERT INTO info (url, vertical_segment)
  	VALUES ('https://www.amd.com/en/product/10456', 'Boxed Processor');
INSERT INTO info (url, vertical_segment)
  	VALUES ('https://www.amd.com/en/product/10461', 'Boxed Processor');
INSERT INTO info (url, vertical_segment)
  	VALUES ('https://www.amd.com/en/product/10796', 'Desktop ');
INSERT INTO info (url, vertical_segment)
  	VALUES ('https://www.amd.com/en/product/10466', 'Boxed Processor');
INSERT INTO info (url, vertical_segment)
  	VALUES ('https://www.amd.com/en/product/10471', 'Boxed Processor');
-- Processors
INSERT INTO Processors (name, launch_date, product_line, specifications_id, info)
    VALUES ('AMD Ryzen 9 5950X', '2020-11-05', 'AMD Ryzen 9 Desktop Processors', '1', '1');
INSERT INTO Processors (name, launch_date, product_line, specifications_id, info)
    VALUES ('AMD Ryzen 9 5900X', '2020-11-05', 'AMD Ryzen 9 Desktop Processors', '2', '2');
INSERT INTO Processors (name, launch_date, product_line, specifications_id, info)
    VALUES ('AMD Ryzen 7 5800X', '2021-01-12', 'AMD Ryzen 7 Desktop Processors', '3', '3');
INSERT INTO Processors (name, launch_date, product_line, specifications_id, info)
    VALUES ('AMD Ryzen 7 5800 OEM Only', '2020-07-15', 'AMD Ryzen 7 Desktop Processors', '4', '4');
INSERT INTO Processors (name, launch_date, product_line, specifications_id, info)
    VALUES ('AMD Ryzen 5 5600X', '2020-07-15', 'AMD Ryzen 5 Desktop Processors', '5', '5');
