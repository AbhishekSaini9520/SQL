
select * from Employees

select * into emp_bkp from Employees

select * from emp_bkp

--A View is a virtual table,it is a stored SQL Query
--It helps in reducing the complexity of the code
--It helps in implementing security


create view View_1 as(
select * from emp_bkp
)

select * from View_1

create view View_2 as(
select EmployeeID,FirstName,LastName,Email,DepartmentID,HireDate from emp_bkp
)

select * from View_2

--** if we update the view_1 then the changes also be done in emp_bkp
update View_1
set EmployeeID = 100

select * from View_1
select * from emp_bkp

--Let drop the view_2 (it does not delete the emp_bkp table don't worry)

drop view View_2

select * from view_2
select * from emp_bkp
