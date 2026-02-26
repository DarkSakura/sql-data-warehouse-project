/*
=======================================================
Create Database and Schemas
=======================================================
Script Purpose:
	This script creates a new database named 'DataWarehouse' after checking if it already exists.
	If the database exists, it is dropped and recreated.
	The script creates three schemas: 'bronze', 'silver', and 'gold'.

WARNING:
	Running this script will result in the loss of all data in the 'DataWarehouse' database if it already exists.
	Ensure that you have backups of any important data before executing this script.
*/

USE master;
GO

-- Check if the database already exists and drop it if it does
IF DB_ID('DataWarehouse') IS NOT NULL
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create schemas for bronze, silver, and gold layers
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
