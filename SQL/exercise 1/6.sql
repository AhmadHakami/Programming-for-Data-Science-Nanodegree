-- Write a query to get the number of jobs available in the employees table
SELECT COUNT(DISTINCT job_id) number_of_jobs
FROM employees;