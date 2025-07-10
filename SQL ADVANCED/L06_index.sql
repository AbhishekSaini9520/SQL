

--Index -> An index in MS SQL Server improves query performance by allowing faster data retrieval from a table.

select * from Employees

create index IX_1 on Employees(Salary desc)

create index IX_2 on Employees(FirstName,LastName)

drop index Employees.IX_1