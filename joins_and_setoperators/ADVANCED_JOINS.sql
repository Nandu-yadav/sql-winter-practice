--LEFTT ANTI JOINS
/*
SELECT *
FROM A
LEFT JOIN B
ON A.key = B.key 
WHERE B.key IS NULL

*/
--GET CUSTOMERS WHO HAVENT PLACED ANYTHING
SELECT *
FROM customers AS C
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL

--RIGHT ANTI JOINS
/*
SELECT *
FROM A
RIGHT JOIN B
ON A.key = B.key 
WHERE A.key IS NULL

*/
--GET all orders WITHOUT MATCHING CUSTOMERS

SELECT *
FROM customers AS C
RIGHT JOIN orders AS o
    ON c.id = o.customer_id
WHERE c.id IS NULL;

--GET all orders WITHOUT MATCHING CUSTOMERS USING LEFT JOIN
SELECT *
FROM  Orders AS o
LEFT JOIN customers AS C
    ON c.id = o.customer_id
WHERE c.id IS NULL;
--to convert a left to right join just exchange the table orders and replace "left" by "right"


--FULL ANTI JOINTS
SELECT *
FROM  Orders AS o
FULL JOIN customers AS C
    ON c.id = o.customer_id
WHERE c.id IS NULL OR o.customer_id IS NULL;

--GET ALL CUSTOMERS ALONG WITH THEIR ORDERS , BUT ONLY FOR THOSE CUSTOMERS WHO HAVE PLACED AN ORDER (WITHOUT USING INNNER JOIN)
SELECT*
FROM customers AS c
LEFT JOIN orders AS o
    on  c.id = o.customer_id
WHERE o.customer_id IS NOT NULL

--CROSS JOIN
--combines every row fro left with every row from right all posiibke combinations- cartersian join-
SELECT *
from customers
CROSS join orders