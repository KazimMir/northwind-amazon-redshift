-- Load the northwind.categories table with data
INSERT INTO northwind.categories VALUES (1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales', '\x');
INSERT INTO northwind.categories VALUES (2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings', '\x');
INSERT INTO northwind.categories VALUES (3, 'Confections', 'Desserts, candies, and sweet breads', '\x');
INSERT INTO northwind.categories VALUES (4, 'Dairy Products', 'Cheeses', '\x');
INSERT INTO northwind.categories VALUES (5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal', '\x');
INSERT INTO northwind.categories VALUES (6, 'Meat/Poultry', 'Prepared meats', '\x');
INSERT INTO northwind.categories VALUES (7, 'Produce', 'Dried fruit and bean curd', '\x');
INSERT INTO northwind.categories VALUES (8, 'Seafood', 'Seaweed and fish', '\x');

-- Verify the northwind.categories table was loaded with data correctly
SELECT * FROM northwind.categories;
