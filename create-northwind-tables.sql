-- Purpose: Create tables for the Northwind database in Redshift

-- Drop tables if they exist
DROP TABLE IF EXISTS northwind.categories;
DROP TABLE IF EXISTS northwind.customer_customer_demo;
DROP TABLE IF EXISTS northwind.customer_demographics;
DROP TABLE IF EXISTS northwind.customers;
DROP TABLE IF EXISTS northwind.employee_territories;
DROP TABLE IF EXISTS northwind.employees;
DROP TABLE IF EXISTS northwind.order_details;
DROP TABLE IF EXISTS northwind.orders;
DROP TABLE IF EXISTS northwind.products;
DROP TABLE IF EXISTS northwind.region;
DROP TABLE IF EXISTS northwind.shippers;
DROP TABLE IF EXISTS northwind.suppliers;
DROP TABLE IF EXISTS northwind.territories;

-- Create the categories table in the northwind schema
CREATE TABLE northwind.categories (
    category_id int NOT NULL, 
    category_name varchar(15) NOT NULL,
    description varchar(65535),  -- Redshift does not support text, using varchar with max length
    picture varbyte  -- Redshift does not support bytea, using varbyte
);


-- Create the customer_customer_demo table in the northwind schema
CREATE TABLE northwind.customer_customer_demo (  -- Renamed CustomerCustomerDemo to customer_customer_demo to follow Redshift naming conventions
    customer_id varchar(5) NOT NULL,
    customer_type_id varchar(5) NOT NULL
);


-- Create the customer_demographics table in the northwind schema
CREATE TABLE northwind.customer_demographics ( 
    customer_type_id varchar(5) NOT NULL,
    customer_desc varchar(65535)  -- Redshift does not support text, using varchar with max length
);

-- Create the customers table in the northwind schema
CREATE TABLE northwind.customers (
    customer_id varchar(5) NOT NULL,
    company_name varchar(40) NOT NULL,
    contact_name varchar(30),
    contact_title varchar(30),
    address varchar(60),
    city varchar(15),
    region varchar(15),
    postal_code varchar(10),
    country varchar(15),
    phone varchar(24),
    fax varchar(24)
);

-- Create the employee_territories table in the northwind schema
CREATE TABLE northwind.employee_territories (
    employee_id smallint NOT NULL,
    territory_id varchar(20) NOT NULL
);

-- Create the employees table in the northwind schema
CREATE TABLE northwind.employees (
    employee_id smallint NOT NULL,
    last_name varchar(20) NOT NULL,
    first_name varchar(10) NOT NULL,
    title varchar(30),
    title_of_courtesy varchar(25),
    birth_date date,
    hire_date date,
    address varchar(60),
    city varchar(15),
    region varchar(15),
    postal_code varchar(10),
    country varchar(15),
    home_phone varchar(24),
    extension varchar(4),
    photo varbyte,  -- Redshift does not support bytea, using varbyte
    notes varchar(65535),  -- Redshift does not support text, using varchar with max length
    reports_to smallint,
    photo_path varchar(255)
);

-- Create the order_details table in the northwind schema
CREATE TABLE northwind.order_details (
    order_id smallint NOT NULL,
    product_id smallint NOT NULL,
    unit_price real NOT NULL,
    quantity smallint NOT NULL,
    discount real NOT NULL
);

-- Create the orders table in the northwind schema
CREATE TABLE northwind.orders (
    order_id smallint NOT NULL,
    customer_id varchar(5),
    employee_id smallint,
    order_date date,
    required_date date,
    shipped_date date,
    ship_via smallint,
    freight real,
    ship_name varchar(40),
    ship_address varchar(60),
    ship_city varchar(15),
    ship_region varchar(15),
    ship_postal_code varchar(10),
    ship_country varchar(15)
);

-- Create the products table in the northwind schema
CREATE TABLE northwind.products (
    product_id smallint NOT NULL,
    product_name varchar(40) NOT NULL,
    supplier_id smallint,
    category_id smallint,
    quantity_per_unit varchar(20),
    unit_price real,
    units_in_stock smallint,
    units_on_order smallint,
    reorder_level smallint,
    discontinued boolean  -- Redshift does not support bit, using boolean
);

-- Create the region table in the northwind schema
CREATE TABLE northwind.region (
    region_id smallint NOT NULL,
    region_description varchar(60) NOT NULL
);

-- Create the shippers table in the northwind schema
CREATE TABLE northwind.shippers (
    shipper_id smallint NOT NULL,
    company_name varchar(40) NOT NULL,
    phone varchar(24)
);

-- Create the suppliers table in the northwind schema
CREATE TABLE northwind.suppliers (
    supplier_id smallint NOT NULL,
    company_name varchar(40) NOT NULL,
    contact_name varchar(30),
    contact_title varchar(30),
    address varchar(60),
    city varchar(15),
    region varchar(15),
    postal_code varchar(10),
    country varchar(15),
    phone varchar(24),
    fax varchar(24),
    homepage varchar(65535)  -- Redshift does not support text, using varchar with max length
);

-- Create the territories table in the northwind schema
CREATE TABLE northwind.territories (
    territory_id varchar(20) NOT NULL,
    territory_description varchar(60) NOT NULL,
    region_id smallint NOT NULL
);


