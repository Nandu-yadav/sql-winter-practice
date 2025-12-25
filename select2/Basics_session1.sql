USE myDatabase
--ABOVE thing (the DataBase name) ensures that the data based used is the one wanted
GO --written
--this is  a comment
/* this
is
a multiline comment*/
SELECT first_name,     --column name
       country,        -- column name
       score
FROM customers          -- Table name
--WHERE  country = 'Germany' --AND score<500
ORDER BY   country ASC,score ASC /* better to always add something*/

--priority decides by written first
--Nested sorting(ORDERED BY) seperated by commas
-- ORDER BY is for sorting


