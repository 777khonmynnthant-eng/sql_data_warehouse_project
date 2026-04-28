/*
================================================================
Create Database and Schemas
================================================================
Script Purpose:
  This script creates a new database named 'Datawarehouse' after checking if it already exists.
  IF the database exists, it is dropped and recreated. Additionallly, the script sets up three schemas
  within the database: 'bronze', 'silver', 'gold'.

Warning:
  Running the script will drop the entire 'Datawarehouse' database if it exists.
  All data in the database will be permanently deleted. Proceed with caution
  and ensure you have proper backups before running the script.
*/

use master;
Go

  --Drop and recreate the 'Datawarehouse' database
  If EXISTS (SELECT 1 from sys.databases where name = 'Datawarehouse')
  Begin
    Alter DataBAse DataWarehouse Set Single_User with rollback immediate;
  End;
Go

  --Create the 'DataWarehouse' DataBase
create database Datawarehosue;
Go

use Datawarehosue;
Go

  --Create Schemas
create schema bronze;
Go

create schema silver;
Go
create schema gold;
Go
