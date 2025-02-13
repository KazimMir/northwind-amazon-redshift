-- Load data into northwind.shippers table
INSERT INTO northwind.shippers VALUES (1, 'Speedy Express', '(503) 555-9831');
INSERT INTO northwind.shippers VALUES (2, 'United Package', '(503) 555-3199');
INSERT INTO northwind.shippers VALUES (3, 'Federal Shipping', '(503) 555-9931');
INSERT INTO northwind.shippers VALUES (4, 'Alliance Shippers', '1-800-222-0451');
INSERT INTO northwind.shippers VALUES (5, 'UPS', '1-800-782-7892');
INSERT INTO northwind.shippers VALUES (6, 'DHL', '1-800-225-5345');

-- Verify the northwind.shippers table was loaded with data correctly
SELECT * FROM northwind.shippers;
