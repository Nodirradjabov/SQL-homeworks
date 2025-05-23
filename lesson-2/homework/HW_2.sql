--Lesson 2: DDL and DML Commands

-- 1. Сreate a table Employees with columns: EmpID INT, Name (VARCHAR(50)), and Salary (DECIMAL(10,2)).

Create table Employees (
EmpId INT,
NAME VARCHAR(50),
SALARY DECIMAL (10,2)
)



-- 2. Insert three records into the Employees table using different INSERT INTO approaches (single-row insert and multiple-row insert).

INSERT INTO Employees (EMPID, NAME, SALARY)
VALUES (1, 'ALICE', 2000)

-- 3. Update the Salary of an employee to 7000 where EmpID = 1.

update Employees
set SALARY = 7000
WHERE EmpId = 1


SELECT * FROM Employees

--4. Delete a record from the Employees table where EmpID = 2.

DELETE FROM Employees
WHERE EMPID = 2

--5. Give a brief definition for difference between DELETE, TRUNCATE, and DROP.

-- DELETE:
-- Removes specific rows from a table using a WHERE clause. Can be rolled back (transaction-safe). Triggers are fired
--Table structure remains.

-- TRUNCATE:
-- Removes all rows from a table very quickly, but without logging individual row deletions.
-- Cannot delete specific rows (no WHERE).
-- cannot be rolled back (in most cases).
-- Table structure remains.
-- Resets identity column (if any).

-- DROP:
-- Completely removes the table (or other object) from the database.
-- Deletes both data and structure.
-- Cannot be rolled back.
-- After this, the table no longer exists.

--6. Modify the Name column in the Employees table to VARCHAR(100).


alter TABLE EMPLOYEES
ALTER COLUMN NAME VARCHAR (100)



-- 7.Add a new column Department (VARCHAR(50)) to the Employees table.

ALTER TABLE EMPLOYEES
ADD DEPARTMENT VARCHAR (50)



--8. Change the data type of the Salary column to FLOAT.

ALTER TABLE EMPLOYEES
ALTER COLUMN SALARY FLOAT

--9. Create another table Departments with columns DepartmentID (INT, PRIMARY KEY) and DepartmentName (VARCHAR(50)).

create table DEPARTMENTS (
DEPARTMENTID INT PRIMARY KEY,
DEPARTMENTNAME VARCHAR (50),
)

--10. Remove all records from the Employees table without deleting its structure.

delete from employees

truncate table employees

SELECT * FROM  Employees

--11. Insert five records into the Departments table using INSERT INTO SELECT method(you can write anything you want as data).

insert into DEPARTMENTS (departmentID, DEPARTMENTNAME)
select * from (
select 1 as departmentid, 'sales' as departmentname union all
select 2, 'marketing' union all
select 3, 'IT' UNION ALL
select 4, 'LOGISTICS' UNION ALL
select 5, 'HR' 
) AS TEMPDEPARTMENTS


--12. Update the Department of all employees where Salary > 5000 to 'Management'.

UPDATE Employees
SET DEPARTMENT = 'MANAGEMENT'
WHERE SALARY >5000

--13. Write a query that removes all employees but keeps the table structure intact.

DELETE FROM EMPLOYEES


-- 14. Drop the Department column from the Employees table.

ALTER TABLE EMPLOYEES
DROP COLUMN DEPARTMENT


--15.Rename the Employees table to StaffMembers using SQL commands.

EXEC sp_rename 'EMPLOYEES', 'STAFFMEMBERS'




SELECT *FROM STAFFMEMBERS

--16. Write a query to completely remove the Departments table from the database.

DROP TABLE DEPARTMENTS


--17. Create a table named Products with at least 5 columns, including: ProductID (Primary Key), ProductName (VARCHAR), Category (VARCHAR), Price (DECIMAL)

CREATE TABLE PRODUCTS (
PRODUCTID INT PRIMARY KEY,
PRODUCTNAME VARCHAR(100),
CATEGORY VARCHAR (50),
PRICE DECIMAL (10,2),
STOCKQUANTITY INT 
)



--18. Add a CHECK constraint to ensure Price is always greater than 0.

ALTER TABLE PRODUCTS
ADD CONSTRAINT CHK_PRICE_POSITIVE
CHECK (PRICE>0)


--19. Modify the table to add a StockQuantity column with a DEFAULT value of 50.

ALTER TABLE PRODUCTS 
ADD STOCKQUANTITY INT DEFAULT 50


-- 20. Rename Category to ProductCategory

EXEC SP_RENAME 'PRODUCTS.CATEGORY', 'PRODUCTCATEGORY', 'COLUMN'

-- 21. Insert 5 records into the Products table using standard INSERT INTO queries.

INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, StockQuantity)
VALUES (1, 'Wireless Mouse', 'Electronics', 25.99, 100);

INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, StockQuantity)
VALUES (2, 'Notebook', 'Stationery', 3.49, 500);

INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, StockQuantity)
VALUES (3, 'Water Bottle', 'Accessories', 9.99, 200);

INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, StockQuantity)
VALUES (4, 'Desk Lamp', 'Furniture', 18.75, 75);

INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, StockQuantity)
VALUES (5, 'USB-C Cable', 'Electronics', 7.50, 300)


-- 22.Use SELECT INTO to create a backup table called Products_Backup containing all Products data.

SELECT *
INTO PRODUCTS_BACKUP
FROM PRODUCTS


--23. Rename the Products table to Inventory.

EXEC SP_RENAME 'PRODUCTS', 'INVENTORY'

-- 24. Alter the Inventory table to change the data type of Price from DECIMAL(10,2) to FLOAT.

ALTER TABLE Inventory
ALTER COLUMN Price FLOAT


--25.Add an IDENTITY column named ProductCode that starts from 1000 and increments by 5 to Inventory table.

SELECT 
    IDENTITY(INT, 1000, 5) AS ProductCode,
    ProductID,
    ProductName,
    ProductCategory,
    Price,
    StockQuantity
INTO Inventory_New
FROM Inventory;

