

select * from dbo.Employees

insert into dbo.Employees
values (9,'Jay','','IT',73000,'2022-04-04')

select * from dbo.Employees

insert into dbo.Employees
values (10,'Nitin','Shamani','0',54000,'2021-02-22')

select * from dbo.Employees

-- we need the record which is null in department
-- not a good way -> don't show the result
select * from dbo.Employees
where Department = null

-- good way of writing this
select * from dbo.Employees
where Department is null

select * from dbo.Employees
where Department is not null