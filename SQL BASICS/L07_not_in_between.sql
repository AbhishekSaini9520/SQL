

select * from dbo.EmployeeRecords

-- not operator
select * from dbo.EmployeeRecords 
where not FirstName = 'John' and not Salary = 60000

select * from dbo.EmployeeRecords
where not LastName = 'Miller' or not Department= 'HR'

--between operator
select * from dbo.EmployeeRecords
where Salary between 75000 and 85000

select * from dbo.EmployeeRecords
where Salary >= 75000 and Salary <= 85000

-- not between
select * from dbo.EmployeeRecords
where Salary not between 75000 and 85000

select * from dbo.EmployeeRecords
where not Salary between 75000 and 85000


select * from dbo.EmployeeRecords
where Department = 'HR' or Department = 'IT'

select * from dbo.EmployeeRecords
where Department in ('HR','IT')

select * from dbo.EmployeeRecords
where Department not in ('HR','IT')

--not a case sensitive
SELECT * FROM DBO.EMPLOYEERECORDS
WHERE DEPARTMENT NOT IN ('HR','IT')
