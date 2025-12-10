--create a new table called persons with coloumns: id persin_name , birth_date and phone


DROP TABLE persons;
GO

CREATE TABLE persons(
    id INT PRIMARY KEY,
    person_name VARCHAR(50),
    birth_date DATE,
    phone VARCHAR(15)
);
GO

INSERT INTO persons (id, person_name, birth_date, phone)
VALUES
(1,  'Ravi',    '1998-03-12', '9876543210'),
(2,  'Anita',   '2000-11-25', '9123456789'),
(3,  'John',    '1995-07-18', '9012345678'),
(4,  'Maria',   '1999-02-05', '9765432189'),
(5,  'Liam',    '1997-12-30', '9098765432'),
(6,  'Chen',    '1996-04-14', '9345678901'),
(7,  'Aisha',   '2001-09-20', '9456123789'),
(8,  'David',   '1994-01-09', '9988776655'),
(9,  'Sophia',  '1993-06-22', '9345126789'),
(10, 'Yuki',    '1998-10-11', '9567890123'),
(11, 'Arjun',   '1999-05-03', '9823456710'),
(12, 'Elena',   '1995-08-27', '9876012345'),
(13, 'Michael', '1992-12-19', '9753108642');
GO


SELECT *
FROM persons;
GO

select * from persons
