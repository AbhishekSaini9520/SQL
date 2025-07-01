
--and and or operator in sql
select * from EmployeeRecords
where LastName = 'Miller' and EmployeeID = 3

select * from EmployeeRecords
where LastName = 'Miller' and EmployeeID = '3'

select * from dbo.EmployeeRecords
where Department = 'HR' or Department = 'Finance'

select * from dbo.EmployeeRecords
where (Department = 'HR' or Department = 'Finance') and Salary = 60000.00