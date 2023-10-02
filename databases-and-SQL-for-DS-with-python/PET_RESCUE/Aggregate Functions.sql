-- Aggregate Functions --
-- Query A1: Enter a function that calculates the total cost of all animal rescues in the PETRESCUE table. --
select sum(COST) from PETRESCUE;
-- Query A2: Enter a function that displays the total cost of all animal rescues in the PETRESCUE table in a column called SUM_OF_COST. --
select sum(COST) as SUM_OF_COST from PETRESCUE;
-- Query A3: Enter a function that displays the maximum quantity of animals rescued.--
SELECT max(QUANTITY) from PETRESCUE;
-- Query A4: Enter a function that displays the average cost of animals rescued. --
select AVG(COST) from PETRESCUE;
-- Query A5: Enter a function that displays the average cost of rescuing a dog. --
SELECT AVG(COST/QUANTITY) FROM PETRESCUE WHERE ANIMAL = 'Dog';


