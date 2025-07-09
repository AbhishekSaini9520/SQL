

select * from EmployeeSalaries

--Incorrect Query
select * 
,LAST_VALUE(EmployeeName) over(order by Salary desc)
from EmployeeSalaries

--correct Query
select * 
,LAST_VALUE(EmployeeName) over(order by Salary desc rows between unbounded preceding and unbounded following) [Emp with lowest Salary]
from EmployeeSalaries

--correct Query
select * 
,LAST_VALUE(EmployeeName) over(order by Salary desc rows between unbounded preceding and unbounded following) [Emp with lowest Salary]
,LAST_VALUE(Salary) over(order by Salary desc rows between unbounded preceding and unbounded following) [Emp with lowest Salary]
from EmployeeSalaries

--correct Query
select * 
,LAST_VALUE(EmployeeName) over(partition by Department order by Salary desc rows between unbounded preceding and unbounded following) [Emp with lowest Salary]
,LAST_VALUE(Salary) over(partition by Department order by Salary desc rows between unbounded preceding and unbounded following) [Emp with lowest Salary]
from EmployeeSalaries

--correct Query
select * 
,LAST_VALUE(EmployeeName) over(partition by Department order by Salary rows between unbounded preceding and unbounded following) [Emp with lowest Salary]
,LAST_VALUE(Salary) over(partition by Department order by Salary rows between unbounded preceding and unbounded following) [Emp with lowest Salary]
from EmployeeSalaries

--we got same result by using the first value
select *
,FIRST_VALUE(EmployeeName) over(partition by Department order by Salary desc) 
,FIRST_VALUE(Salary) over(partition by Department order by Salary desc) 
from EmployeeSalaries