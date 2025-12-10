--edit table


ALTER TABLE persons
--add a new column cALLED EMAIL TO THE PERSONS TABLE
ADD  email VARCHAR(50) NOT NULL
SELECT * FROM persons

--DROPPING
--remove the column phone from the persons table
DROP COLUMN phone -- (DROP COLUMN phone)

/*
NOTE:
You cannot add a NOT NULL column unless:
you provide a DEFAULT, or
the table is empty
Otherwise SQL Server won’t know what value to put for existing rows.
DROP COLUMN must be the only command inside its ALTER statement.



You cannot add a NOT NULL column to a table that already has data unless you provide a DEFAULT value.
*/