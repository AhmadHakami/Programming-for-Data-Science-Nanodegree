/* Write a query to find the names (first_name, last_name) of the employees who are
managers*/

SELECT first_name, last_name
FROM employees
WHERE (employee_id IN (SELECT manager_id FROM employees));