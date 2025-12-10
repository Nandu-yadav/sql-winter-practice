USE myDatabase
--ABOVE thing ensures that the data based used is the one wanted
GO --written

--this is  a comment

/* this
is
a comment*/
SELECT first_name,
       country,
       score
FROM customers
--WHERE  country = 'Germany' --AND score<500
ORDER BY   country ASC,score ASC /* better to always add something*/
--priority decides by written first
--Nested sorting(ORDERED BY) seperated by commas



