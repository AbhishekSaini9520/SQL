

select * from Employees

select * into #1 from Employees

select * from #1

--Example 1 :
with cte_1 as(
select * from #1 where EmployeeID in (1,2)
),cte_2 as(
select * from #1 where EmployeeID in (3,4)
)

select * from cte_1
union all
select * from cte_2

--Example 2 :
with cte_1 as(
select EmployeeID,FirstName from #1 where EmployeeID in (1)
),cte_2 as(
select EmployeeID,FirstName from #1 where EmployeeID in (3)
)

select * into #2 from (
select * from cte_1
union all
select * from cte_2
) x

select * from #2

--Example 3 :
with cte_1 as(
select EmployeeID,FirstName from #1 where EmployeeID in (1)
),cte_2 as(
select EmployeeID,FirstName from #1 where EmployeeID in (3)
)

insert into #2 select * from (
select * from cte_1
union all
select * from cte_2
) x

select * from #2

--Example 4 :
with cte_1 as(
select EmployeeID,FirstName,Salary from #1 where EmployeeId in (2)
), cte_2 as (
select EmployeeID,FirstName,Salary from #1 where EmployeeID in (4)
)

delete from #1 where EmployeeID in (select distinct EmployeeID from cte_1
union all
select distinct EmployeeID from cte_2
) 

select * from #1

--Example 5 :
with cte_1 as(
select EmployeeID,FirstName,Salary from #1 where EmployeeId in (9)
), cte_2 as (
select EmployeeID,FirstName,Salary from #1 where EmployeeID in (10)
)

update #1 set EmployeeID = 100 where EmployeeID not in (Select distinct EmployeeID from cte_1
union all
select distinct EmployeeID from cte_2)

select * from #1