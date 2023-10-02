-- Working with Multiple Tables --
-- Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table. --
select * from EMPLOYEES where JOB_ID IN (select JOB_IDENT from JOBS);
-- Retrieve only the list of employees whose JOB_TITLE is Jr. Designer. --
select * from EMPLOYEES where JOB_ID IN (select JOB_IDENT from JOBS where JOB_TITLE= 'Jr. Designer');
-- Retrieve JOB information and who earn more than $70,000. --
select JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT from JOBS where JOB_IDENT IN (select JOB_ID from EMPLOYEES where SALARY > 70000 );
-- Retrieve JOB information and list of employees whose birth year is after 1976. --
select JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT from JOBS where JOB_IDENT IN (select JOB_ID from EMPLOYEES where YEAR(B_DATE)>1976 );
-- Retrieve JOB information and list of female employees whose birth year is after 1976 --
select JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT from JOBS  where JOB_IDENT IN (select JOB_ID from EMPLOYEES where YEAR(B_DATE)>1976 and SEX='F' );
