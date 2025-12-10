--copy data from source(CUNSTOMERS) table into target(people)
INSERT INTO people(id,person_name,birth_date,phone)
SELECT id,first_name,NULL,'Unknown'
  FROM customers

