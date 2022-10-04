/* Write a query to display the names (first_name, last_name) and salary for all employees
whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100.
*/
SELECT first_name, last_name, salary
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000 AND (department_id BETWEEN 30 AND 100);
