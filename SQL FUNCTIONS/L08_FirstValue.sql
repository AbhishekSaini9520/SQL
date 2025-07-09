

select * from EmployeeSalaries

select *
,FIRST_VALUE(Salary) over(order by Salary) [Minimum salary]
from EmployeeSalaries

select *
,FIRST_VALUE(EmployeeName) over(order by Salary) [Minimum salary]
from EmployeeSalaries

select *
,FIRST_VALUE(EmployeeName) over(order by Salary) [Minimum salary]
,FIRST_VALUE(Salary) over(order by Salary) [Minimum salary]
from EmployeeSalaries

select * 
,FIRST_VALUE(Salary) over(partition by Department order by Salary) 
from EmployeeSalaries

select * 
,FIRST_VALUE(Salary) over(partition by Department order by Salary desc) 
from EmployeeSalaries

select *
,FIRST_VALUE(EmployeeID) over(partition by Department order by Salary) [First Value EID]
,FIRST_VALUE(EmployeeName) over(partition by Department order by Salary) [First Value Emp Name]
from EmployeeSalaries