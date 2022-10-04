/* Write a query to find the names (first_name, last name should be displayed in 1 column),
department ID and the name of all the employees.
*/
SELECT department_id, first_name || ' ' || last_name AS FULL_Name
from employees