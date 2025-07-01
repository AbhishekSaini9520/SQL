

select * from [dbo].[Employees]

--Sorting the salary column

select * from [dbo].[Employees]
order by Salary

select * from [dbo].[Employees]
order by Salary desc

--sort the ascending order of the firstname and descending order of the salary
--sort by ascending order not mandatory in it, by default it is ascending
select * from dbo.Employees
order by FirstName asc, Salary desc

--sort ascending order of Department and descending order of salary
select * from dbo.Employees
order by Department asc, Salary desc

