

select * from dbo.Employees

-- Create the copy/replica of original dbo.Employees 
-- because we don't want to interupt the original employees table
select * into #1 from dbo.Employees

select * from #1

-- update statement 
update #1
set Department = 'HR'
where Department is null
-- there is always the where cause along with the update

select * from #1

-- update multiple column
update #1
set Salary = 89000, HireDate = '2023-01-01'
where EmployeeID = 7

select * from #1 where EmployeeID = 7

-- create the replica of dbo.employees
select * into #2 from dbo.Employees

-- if we are not using the where caluse
select * from #2

update #2
set Department = 'Finance'
-- this will override the all the column with the Finance
select * from #2