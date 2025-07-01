

select * from dbo.Employees

--insert the record
insert into dbo.Employees (EmployeeID,FirstName,LastName,Department,Salary,HireDate)
values (6,'Raj','Ambani','IT',67000,'2023-04-20')

select * from dbo.Employees

insert into dbo.Employees (EmployeeID,FirstName,LastName)
values (7,'Rohit','Mehera')

-- rest of the columns are filled with null
select * from dbo.Employees

--for all the column we not need to mention the all column
insert into dbo.Employees
values (8,'Mahesh','Narang','HR',73000,'2024-01-21')

select * from dbo.Employees

-- how to know that the order of all values when we don't write the columns
select * from INFORMATION_SCHEMA.COLUMNS
where table_name = 'Employees'
/* 
col_name   ordinal_position
EmployeeID	1
FirstName	2
LastName	3
Department	4
Salary		5
HireDate	6
*/