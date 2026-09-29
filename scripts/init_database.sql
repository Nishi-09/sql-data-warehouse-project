/*
=======================================================
Create database 
=======================================================
Script purpose:
       This script creates a new
       database named 'dwh' after checking if it already exists.
       If the database exists, it is dropped and recreated. Additionally, the script sets up three database 
       within your query: 'bronze', 'silver', and 'gold'.
WARNING:
      Running this scripts will drop the entire 'dwh' database if it exists.
      All data in the database will be permanently deleted. Proceed and caution
      and ensure you have proper backups before running this script.
*/

-- Drop and recreate the 'dwh' database
if exists (select 1 from sys.databases where name = 'dwh')
Begin
    Alter database dwh set single_user with rollback immediate;
    Drop database dwh;
end;


-- create the 'dwh' database
create database dwh;

use dwh;

-- create database
create database if not exists bronze;

create database if not exists silver;

create database if not exists gold;
