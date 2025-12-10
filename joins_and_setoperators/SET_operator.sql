--SYNTAX
SELECT 
 FirstName,
 LastName
FROM Sales.customers
UNION 
SELECT 
FirstName,
LastName
FROM Sales.Employees
/*
RULE 1. ORDER BY you can use only once
RULE 2. UNION  both must have same no. of columns
RULE 3. DATA TYPES must match
     4. order of columns must be same
     5. 
     6. SQL cam merge any two columns if above rules accepyted bt in treality first and last name doesnt merge for that SQL is not resposible like NANDU,YADAV can come below one another but not side by side matching name , we only have to check it
*/


--UNION : returns all distinct rows only once
-- Combine the data from employees and customers into one table
SELECT
FirstName,
LastName
FROM Sales.Customers
UNION           -- ORDER of employee and customer doest matter  for both UNION and UNION ALL 
SELECT  
FirstName,
LastName
FROM Sales.Employees

--UNION ALL : returns all rows including the duplicates

/*
UNION ALL is genrally faster than union all ,
if no duplicates union all is better (being efficint and fast)
*/
--COMBINE THE DATA FROM EMPLOYEES AND CUSTOMERS INTO ONE TABLE INCLUDING DUPLICATES
-------------------------------------------------------------------------------------
/*
EXCEPT: A-B
returns all distinct rows from the first query tht are not found in the second query 
2. It is the only one where the order of queries affects the final result
*/
SELECT  
FirstName,
LastName
FROM Sales.Customers
EXCEPT --minus  customers-employees
SELECT
FirstName,
LastName
FROM Sales.Employees

---------------------------------------------------------------------------------
/*
INTERSECT
*/
SELECT  
FirstName,
LastName
FROM Sales.Customers
INTERSECT -- ORDER doest matter
SELECT
FirstName,
LastName
FROM Sales.Employees

/*
APPLICATIONS OF SET OPERATER
combine information before interpretation
database developers divide the data into tables to optimise performance and archive
eg. yearly data to overall data ; customers,suppliers ,salesmen etc.. to PEOPLE INVOLVED 
*/
--orders data stored in seperate tables (orders and OrderArchive)
--Combine all orders into our report without duplictes

SELECT
'OrdersArchive' AS SourceTable,
[OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
 FROM Sales.Orders

UNION

SELECT 'OrdersArchive' AS SourceTable,
[OrderID],
       [ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
FROM Sales.OrdersArchive
ORDER BY OrderID ;

--BEST PRACTICE - Never use an asterisk * to combine tales instead list needed clumns instead
