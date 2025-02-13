# northwind-amazon-redshift
Repo for loading Northwind sample data to the Amazon Redshift.

This repo contains:
- Scripts to create tables in Northwind sample database (create-northwind-tables.sql) 
- Scripts to load data in the tables in Northwind sample database (load-northwind-table-*.sql) 
- Data in csv format for the tables in Northwind sample database (data/*.csv)

## create-northwind-tables.sql
The scripts are adapted from [Microsoft SQL Server samples repo](https://github.com/microsoft/sql-server-samples/blob/master/samples/databases/northwind-pubs/readme.md) and modified for [supported datatypes for amazon redshift](https://docs.aws.amazon.com/redshift/latest/dg/c_Supported_data_types.html).

Renamed the tables & columns to follow the snake case (Ex: customer_demographics) better alinged with Amazon Redshift naming conventions instead of the pascal case (Ex: CustomerDemographics) used by Microsoft SQL Server.

## load-northwind-table-*.sql
The scripts are adapted from [Microsoft SQL Server samples repo](https://github.com/microsoft/sql-server-samples/blob/master/samples/databases/northwind-pubs/readme.md) and modified for Amazon Redshift.

## data/*.csv
The data is provided in csv format which can easily be loaded to an S3 bucket and then loaded to Amazon Redshift.