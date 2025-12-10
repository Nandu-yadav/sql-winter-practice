/*
SQL joins -- adding columns with one common column like data of customers with their reviews

1. recombine data
2. DATA ENRICHEMENT
3. check existance checked and look up

JOIN TYPES:
left table and right table
matching data ,all data from one , unmatching 
*/

/*
--INNER join
--only matching rows (intersection)
SELECT * 
FROM A            -- A & B places can be exchanged 
INNER JOIN B
ON A.key=B.key
*/
/*
SELECT *
FROM customers
INNER JOIN orders
    ON customers.id = orders.customer_id;

--TIP : first explore both the tables
--column ambiguity : ADD table name before the column to avoid confusion in joins with same named columns
SELECT 
    customers.id AS customer_id,
    customers.first_name,
    orders.order_id AS order_id,
    orders.sales
FROM customers
INNER JOIN orders
    ON customers.id = orders.customer_id;
--insted of writing column name everytime
SELECT 
    c.id AS customer_id,
    c.first_name,
    o.order_id AS order_id,
    o.sales
FROM customers AS c
INNER JOIN orders AS o
    ON c.id = o.customer_id;

    */

/* 
LEFT JOIN - returns rows from left and only matching from right
SELECT * from A(table)
left join B
on A.key=B.key
*/
--get ll customers along with their orders including those without orders
SELECT 
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id; --check if you included commas, check if you included proper exact name

--RIGHT JOIN
SELECT 
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id;

--Get all the customers along with their orders ,including without matching customers (using left join)
SELECT 
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM  orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id;

--FULL JOINT
--get all customers and all orders , even if thers no match
SELECT 
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM  orders AS o
FULL JOIN customers AS c
ON c.id = o.customer_id;