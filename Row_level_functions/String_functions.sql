

--for data cleaniing, manipulating, transforming ,analysing
/*
--NESTED FUNCTIONS
 
 STRING
NUMERIC
NULL
DATE & TIME

Aggregate 
window

*/
--String      -- CONCAT , UPPER, LOWER , TRIM , REPLACE
--CALCULATION -- LEN
-- STRING EXTRACTION -- LEFT, RIGHT , SUBSTRING 
 
--CONCAT - multiple values into single value (adds up)
--show a list of customers first names togethr with their country in one column
SELECT
first_name,
country,
CONCAT(first_name, '-',country) AS name_country
FROM customers;

--UPPER AND LOWER-- convet all characters in to upper (or lower)
SELECT
first_name,
country,
UPPER(first_name) AS upper_name
FROM customers;
SELECT
first_name,
country,
LOWER(first_name) AS low_name
FROM customers;
--TRIM -- remove leading and triling (EMPTY) spaces in between words 
SELECT
first_name
FROM customers
WHERE first_name != TRIM(first_name);
--or use 
-- WHERE LEN(first_name) != LEN(TRIM(first_name))
-- WHERE LEN(first_name) - len(TRIM(first_name)) flag

--REPLACE : to replace characters
/* old value - to new value ' '    */
SELECT
'123-456-7890' AS phone,
REPLACE ('123-456-7890','-','/')AS clean_phone;

SELECT 
'report.txt' AS old_filename,
REPLACE ('report.txt','.txt','.csv') AS new_filename

--LEN - how many characters in a value (including the spaces)
SELECT
first_name,
LEN (first_name) AS len_name
FROM customers;

--LEFT : extract specific number of values from start  LEFT (value, no. of characters)
--RIGHT : extract specific number of values from END   RIGHT(value, no. of characters)
SELECT
    first_name,
    LEFT (TRIM(first_name),2)   first_2_char,
    RIGHT (TRIM(first_name),2)   last_2_char
FROM customers

--SUBSTRING --extract a part of string by mentioning its index, index starts from 1
--SUBSTRING(value,start,length) after 2nd characters extract 2 characters
SELECT first_name,
SUBSTRING(TRIM(first_name),3,LEN(first_name)) AS sub_name
FROM customers