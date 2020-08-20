select
(select Salary
from Employee
order by Salary desc
limit 1 offset 1) as SecondHighestSalary
-- When a subquery is placed within the column list it is used to return a single value