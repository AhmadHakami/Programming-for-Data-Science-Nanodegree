/* Write a query to display the job history that was done by any employee who is currently
drawing more than 10000 of salary */
SELECT *
FROM job_history
INNER JOIN employees
ON  job_history.employee_id = employees.employee_id
WHERE salary > 10000;