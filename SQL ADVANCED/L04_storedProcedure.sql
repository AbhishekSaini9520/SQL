

select * from Employees

create procedure sp_test
as
begin
	select * from Employees
end

--Three ways to execute the stored procedure
sp_test

exec sp_test

execute sp_test

----------------------------

create proc sp_test_1
as
begin
	select FirstName, LastName from Employees
end

sp_test_1

--We want add one more column Employee Id in existing table sp_test_1
alter proc sp_test_1
as
begin
	select EmployeeID,FirstName,LastName from Employees
end

sp_test_1