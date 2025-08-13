/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database called 'DataWarehouse'. 
    If the database already exists, it will be dropped and recreated. 
    After that, the script sets up three schemas within the database: 
    'bronze', 'silver', and 'gold', which help organize data according to its processing stage.

Warning:
    Running this script will completely delete the 'DataWarehouse' database if it exists. 
    All existing data will be permanently lost. Make sure to have proper backups before executing.
*/



USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
