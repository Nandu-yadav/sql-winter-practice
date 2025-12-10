--to find AGE
SELECT 
EmployeeID,
BirthDate,
DATEDIFF(year, BirthDate,GETDATE()) Age
FROM Sales.Employees;

--Find the average shipping duration in days for each month
SELECT
MONTH(OrderDate) AS OrderDate,
AVG(DATEDIFF(DAY,OrderDate,ShipDate)) Day2Ship
FROM Sales.Orders
GROUP BY MONTH(OrderDate)

--TimeGap ANalysis
--Find the number of days between each order and the previous order
SELECT
OrderID,
OrderDate CurrentOrderDate,
--LAG() TO obtain the data from previous function
LAG(OrderDate) OVER (ORDER BY OrderDate) PreviousOrderdate,
DATEDIFF(DAY, LAG(OrderDate) OVER (ORDER BY OrderDate),OrderDate) Difference
FROM Sales.Orders

--ISDATE--
SELECT ISDATE('123') DateCheck1,
 ISDATE('2025-08-25') DateCheck2,
 ISDATE('25-08-2025') DateCheck3,
 ISDATE ('2025') DateCheck4,
 ISDATE ('08') Datecheck5

SELECT 
--CAST(OrderDate AS DATE ) OrderDate,
    CAST (OrderDate AS DATE) OrderDate,

FROM
(
    SELECT '2025-08-20' AS OrderDate UNION
    SELECT '2025-08-21'  UNION
    SELECT '2025-08-23'  UNION
    SELECT '2025-08-23'  UNION
)





