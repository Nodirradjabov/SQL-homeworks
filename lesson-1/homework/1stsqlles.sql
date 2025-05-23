--EASY

--1. Define the following terms: data, database, relational database, and table:
--Data refers to raw facts, figures, or values that represent information.

-- A database is an organized collection of data that is stored and accessed electronically. 

--A relational database is a type of database that stores data in tables, which are linked to each other using relationships (typically via keys).

-- A table is a structured set of data elements (values) organized in rows and columns. 

--2.List five key features of SQL Server:

-- Relational Database Management:
-- Transact-SQL (T-SQL)
-- Security and Authentication
-- High Availability and Disaster Recovery
-- Business Intelligence and Reporting Tools

--3. What are the different authentication modes available when connecting to SQL Server? (Give at least 2)

-- Windows Authentication
-- SQL Server Authentication

-- Medium

--4. Create a new database in SSMS named SchoolDB.

Create database SchoolIDB

-- 5. Write and execute a query to create a table called Students with columns: StudentID (INT, PRIMARY KEY), Name (VARCHAR(50)), Age (INT).

CREATE TABLE STUDENTS (
StudentID INT PRIMARY KEY,
NAME VARCHAR (50),
AGE INT
)

-- 6. Describe the differences between SQL Server, SSMS, and SQL.

-- SQL Server - A Relational Database Management System (RDBMS) developed by Microsoft. It stores and manages data in databases and provides powerful tools for querying, storing, and securing that data.

-- SSMS (SQL Server Management Studio) - A graphical user interface (GUI) tool for managing SQL Server. It allows you to connect to SQL Server, write and execute SQL queries, manage databases, tables, users, and security settings — all in a visual environment.

--SQL (Structured Query Language) - A language used to communicate with databases. 

-- HARD
--7. Research and explain the different SQL commands: DQL, DML, DDL, DCL, TCL with examples.

-- DQL (Data Query Language) - Used to query and retrieve data from the database.
-- MAIN COMMAND - SELECT

-- DML – Data Manipulation Language - sed to manipulate existing data in the database.
-- Main Commands: INSERT — adds new data, UPDATE — modifies existing data, DELETE — removes data.

-- DDL – Data Definition Language - Used to define or change the structure of database objects (tables, schemas, etc.).
-- Main Commands: CREATE — creates new objects (tables, views, etc.), ALTER — modifies existing objects, DROP — deletes objects.

--DCL – Data Control Language -used to control access and permissions in the database.
-- Main Commands: GRANT — gives access rights to users, REVOKE — removes access rights.

-- TCL – Transaction Control Language - Used to manage transactions (groups of SQL operations treated as a single unit).

-- Main Commands: BEGIN TRANSACTION — starts a transaction, COMMIT — saves all changes made in the transaction, ROLLBACK — undoes changes made in the transaction.


-- 8. Write a query to insert three records into the Students table.

INSERT INTO STUDENTS (StudentID, Name, Age) 
values 
(1, 'Alice', 20),
(2, 'Bob', 22),
(3, 'Charlie', 19)

--9. Restore AdventureWorksDW2022.bak file to your server. (write its steps to submit) You can find the database from this link :https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2022.bak

-- Step 1: Download the .bak File
--Go to this link: AdventureWorksDW2022.bak
-- Save the file to your computer, for example: C:\DOWNLOAD\AdventureWorksDW2022.bak

-- Step 2: Move the .bak File to the Default Backup Folder. copy it to SQL Server's default backup directory: C:\Program Files\Microsoft SQL Server\MSSQLXX.MSSQLSERVER\MSSQL\Backup\

-- Step 3: Open SQL Server Management Studio (SSMS), Connect to your SQL Server instance.

-- Step 4: Restore the Database, In Object Explorer, right-click on "Databases" → select "Restore Database…". Select Device, then click the "…" button.
-- Click "Add", then locate and select AdventureWorksDW2022.bak. Click OK.

--Step 5: Review Restore Options. Under Destination, make sure the database name is AdventureWorksDW2022.
-- Go to Options tab (left panel): Check "Relocate all files to folder" or ensure paths are correct. Check "Overwrite the existing database" if necessary.

-- Step 6: Click OK to Start the Restore. Wait for a success message: "Database restored successfully."
-- Step 7: Verify the Database. USE AdventureWorksDW2022. SELECT * FROM DimCustomer




