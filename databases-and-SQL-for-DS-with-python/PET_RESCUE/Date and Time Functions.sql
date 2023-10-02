-- Date and Time Functions --
-- Query C1: Enter a function that displays the day of the month when cats have been rescued. -- 
select day(RESCUEDATE) from PETRESCUE WHERE ANIMAL = 'cat';
-- Query C2: Enter a function that displays the number of rescues on the 5th month. --
select sum(QUANTITY) from PETRESCUE where month(RESCUEDATE) = '5';
-- Query C3: Enter a function that displays the number of rescues on the 14th day of the month. --
SELECT SUM(QUANTITY) FROM PETRESCUE where day(RESCUEDATE) = '14';
-- Query C4: Animals rescued should see the vet within three days of arrivals. Enter a function that displays the third day from each rescue. --
SELECT date_add(RESCUEDATE, INTERVAL 3 DAY) from PETRESCUE;
-- Query C5: Enter a function that displays the length of time the animals have been rescued; the difference between today’s date and the rescue date. --
select DATEDIFF(CURRENT_TIMESTAMP,RESCUEDATE) from PETRESCUE;


