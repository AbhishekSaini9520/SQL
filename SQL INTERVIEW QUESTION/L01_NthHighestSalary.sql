

select * from Employees

--Nth highest Salary

--Approach 1 
select max(Salary) [3rd Highest Salary] from Employees
where Salary < (
select max(Salary) [2nd Highest Salary] from Employees
where Salary < (
select max(Salary) from Employees))

--Approach 2 ( CTE )

with cte as(
select *,DENSE_RANK() over(order by Salary desc) [DR]
from Employees
)
select Salary [2nd Highest Salary] from cte where DR = 2


with cte as(
select *,DENSE_RANK() over(order by Salary desc) [DR]
from Employees
)
select Salary [3rd Highest Salary] from cte where DR = 3


--Approach 3 (subquery with dense rank)

select Salary [2nd Highest Salary] from 
(select *,DENSE_RANK() over(order by Salary desc) [DR] from Employees) x
where DR = 2

select Salary [3rd Highest Salary] from 
(select *,DENSE_RANK() over(order by Salary desc) [DR] from Employees) x
where DR = 3

--Approach 4 ( distinct top )

select top 1 Salary [2nd Highest Salary] from (
select distinct top 2 Salary from Employees
order by Salary desc) x
order by Salary

select top 1 Salary [3rd Highest Salary] from (
select distinct top 3 Salary from Employees
order by Salary desc) x
order by Salary

