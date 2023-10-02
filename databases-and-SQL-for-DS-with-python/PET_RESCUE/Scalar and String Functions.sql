-- Scalar and String Functions --
-- Query B1: Enter a function that displays the rounded cost of each rescue. --
select round(COST) as ROUNDED_COST from PETRESCUE;
-- Query B2: Enter a function that displays the length of each animal name. --
SELECT length(ANIMAL) AS LENGTH_EACH_ANIMAL FROM PETRESCUE;
-- Query B3: Enter a function that displays the animal name in each rescue in uppercase. --
SELECT ucase(ANIMAL) AS ANIMAL_UPPERCASE FROM PETRESCUE;
-- Query B4: Enter a function that displays the animal name in each rescue in uppercase without duplications. --
SELECT distinct(ucase(ANIMAL)) as ANIMALS from PETRESCUE;
-- Enter a query that displays all the columns from the PETRESCUE table, where the animal(s) rescued are cats. Use cat in lower case in the query. --
SELECT * FROM PETRESCUE where lcase(ANIMAL) = 'cat';






