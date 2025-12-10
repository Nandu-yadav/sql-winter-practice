/*
INSERT INTO table_name (column1,col2,...)
VALUES (val1,val2,val3,...)
*/

/*
INSERT INTO customers(id,first_name,country,score)
VALUES 
    ( 6,'Anna','USA',NULL),
    (7,'sam',NULL, 100)
*/
--NOTE : COLUMNS AND VALUES MUST BE IN SAME ORDER

--NOTE : YOU CAN ONLY SKIP THE COLUMNS IF YOU INSERT VALUES FOR EVERY COLUMN
--TIP : always list columns explictly for clarity and maintainability 

--NOTE: columns not included in INSERT becomes NULL (unless a default or constraint exists,(LIKE BELOW))
DELETE FROM customers;
INSERT INTO customers (id, first_name, country, score)
VALUES
(1, 'Maria',  'Germany', 350),
(2, 'John',   'USA',     900),
(3, 'Georg',  'UK',      750),
(4, 'Martin', 'Germany', 500),
(5, 'Peter',  'USA',     0),
(6, 'Anna',   'USA',     NULL),
(7, 'Sam',    NULL,      100),
(8, 'USA',    'Max',     NULL),    
(9, 'Andreas','Germany', NULL),
(10,'Sara',   NULL,      NULL);
GO
select * from customers
--ABOVE WAS JUST MANUAL ENTRY