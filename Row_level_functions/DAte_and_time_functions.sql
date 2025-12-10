--YYYY-MM-DD     hh-mm-ss
--timestamp
SELECT 
    OrderID,
    OrderDate,
    shipDate,
    CreationTime
FROM Sales.Orders

SELECT
OrderID,
CreationTime,
'2025-08-20' HardCoded,
GETDATE() Today
FROM Sales.Orders;

SELECT
OrderID,
CreationTime,
YEAR(CreationTime) Year,
MONTH (CreationTime) Month,
DAY (CreationTime) Day,
--DATEPAR :  to extract the week or quarter of the date
DATEPART(week,CreationTime) AS week_dp,
DATEPART(month,CreationTime) AS MONTH_dp,
DATEPART(year,CreationTime) AS year_dp,
DATEPART(hour,CreationTime) AS hour_dp,
DATEPART(Quarter,CreationTime) AS quarter_dp
FROM Sales.Orders ;

--DATENAME() -to get datatype of date like aug = string , 08 = int etc..
SELECT 
OrderID,
CreationTime,
DATENAME(year,CreationTime) year_dn,
DATENAME(weekday,CreationTime) weekday_dn,
DATENAME(day,CreationTime) day_dn,
DATENAME(month,CreationTime) month_dn 
FROM Sales.Orders;

--DATETRUNC -- to reset to 0
SELECT 
OrderID,
CreationTime,
DATETRUNC(year,CreationTime) year_dt,
DATETRUNC(day,CreationTime) Day_dt,
DATETRUNC(minute,CreationTime) Day_dt
FROM Sales.Orders;

SELECT
DATETRUNC(YEAR,CreationTime) Creation,
COUNT(*)
FROM Sales.Orders
GROUP BY DATETRUNC(YEAR,CreationTime);

--EOMONTH(date)-- print the end of the month
--CAST -- first date of the month
SELECT
OrderID,
CreationTime,
EOMONTH(CreationTime) EndOfMonth,
CAST(DATETRUNC(month,CreationTime) AS DATE)  StartOfMonth
FROM Sales.Orders

--how many orders placed each year
SELECT
DATENAME(month,OrderDate) AS OrderDate,
COUNT(*) NrOfOrders
FROM Sales.Orders
GROUP BY DATENAME(month,OrderDate)