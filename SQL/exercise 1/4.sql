/* Write a query to get the names (first_name, last_name), salary, PF of all the employees (PF
is calculated as 12% of salary). */

SELECT first_name, last_name, salary, salary * 0.12 PF
FROM employees;