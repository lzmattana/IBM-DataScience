-- inicial view
CREATE VIEW EMPSALARY AS 
SELECT EMP_ID, F_NAME, L_NAME, B_DATE, SEX, SALARY
FROM EMPLOYEES; 
/*combining two tables EMPLOYEES and JOBS so that we can display our desired information 
from the HR database. including the columns JOB_TITLE, MIN_SALARY, MAX_SALARY of the JOBS table as well 
as excluding the SALARY column of the EMPLOYEES table */
CREATE OR REPLACE VIEW EMPSALARY  AS 
SELECT EMP_ID, F_NAME, L_NAME, B_DATE, SEX, JOB_TITLE, MIN_SALARY, MAX_SALARY
FROM EMPLOYEES, JOBS
WHERE EMPLOYEES.JOB_ID = JOBS.JOB_IDENT;
SELECT * FROM EMPSALARY;