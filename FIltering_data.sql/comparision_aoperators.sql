--  = , <> =!  , >=,<=, 
/*
compare a column to another
compare a column to a value, function & value ; expression & value ; 
sub query & value
*/

--1.condition : country = 'usa'
--make sure you write the sepelling exactlyy lite in datat base (capital,small)
SELECT* FROM customers  
WHERE country = 'USA'

--2. "can replace != with = "
SELECT* FROM customers
WHERE country != 'USA'

--3.AND operator
SELECT* FROM customers
WHERE score>=500 AND country = 'USA'

--4.OR operator
SELECT* FROM customers
WHERE score>=500 or country = 'USA' 

--5.NOT operator
SELECT* FROM customers
WHERE not country = 'USA' --NOT is just like !=


--6. "range operator"
SELECT* FROM customers
WHERE score between 500 and 1000

--MEMBERSHIP OPERATORS
--7. IN - to cheack is a value exists in a list or not
SELECT* FROM customers
WHERE  country IN ('Germany','USA','UK')
--TIP : use IN instead of OR for multiple values in the same column to simplify SQL


--SEARCH OPERATOR
--8. LIKE  -- search for a pattern 
SELECT* FROM customers
WHERE score between 500 and 1000




