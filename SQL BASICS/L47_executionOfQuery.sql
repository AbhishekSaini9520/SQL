

select * from EmployeeSalaries 


select distinct top 1 Department,avg(Salary) [Avg Salary] 
from EmployeeSalaries
where Salary > 50000
group by Department
having avg(Salary)>55000
order by Department

--Execution of the query
--from & joins
--Where
--group by
--having
--select
--distinct
--order by
--top


--Incorrect query
select distinct top 1 Department,avg(Salary) [Avg Salary] 
from EmployeeSalaries
where Salary > 50000
group by Department
having [Avg Salary] >55000
order by Department