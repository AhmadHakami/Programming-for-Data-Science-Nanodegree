/*  Write a query to display the first_name of all employees who have both an "b" and "c" in their
first name.
*/
SELECT *
FROM employees
WHERE first_name LIKE '%c%' and first_name like '%b%';

/*
SELECT *
FROM employees
WHERE first_name LIKE '[c-b]%';
*/