/* Write a query to get monthly salary of each and every employee? Bonus: (If you can round 2
decimal places)
*/ 
select * , round(salary / 12, 2) monthly_salary
from employees;