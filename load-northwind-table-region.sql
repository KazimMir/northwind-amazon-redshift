-- Load data into northwind.region table
INSERT INTO northwind.region VALUES (1, 'Eastern');
INSERT INTO northwind.region VALUES (2, 'Western');
INSERT INTO northwind.region VALUES (3, 'Northern');
INSERT INTO northwind.region VALUES (4, 'Southern');

-- Verify the northwind.region table was loaded with data correctly
SELECT * FROM northwind.region;
