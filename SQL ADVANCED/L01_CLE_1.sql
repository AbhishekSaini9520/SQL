

select * from Employees

/*
A Common Table Expression (CTE) in SQL is a temporary result set that you can reference within a 
SELECT, INSERT, UPDATE, or DELETE statement. CTEs are defined using the WITH keyword, 
and they can make complex queries easier to write, understand, and maintain by breaking them into simpler parts.
*/

select * into #temp1 from Employees

select * from #temp1

---Example 1 : CTE
With CTE AS(
select * from #temp1
)
select * from CTE
-- To run it we need to execute the both statement both at the same time

--Example 2 :
with test_cte as(
select EmployeeId,FirstName from #temp1 where EmployeeID in (2,4)
)
select * from test_cte

--Example 3 :
with [Common Table Expression] as(
select * from #temp1 where EmployeeID in (1,2,3)
)
select * into #temp2 from [Common Table Expression]

select * from #temp2

--Example 4 :
with cte_1 as(
select * from #temp1 where EmployeeID in (2,4,6)
)
update #temp1 set EmployeeID = 101 where employeeId in (Select distinct EmployeeID from cte_1)

select * from #temp1

--Example 5 :
with cte_2 as(
select * from #temp1 where EmployeeID = 1
)

delete from #temp1 where EmployeeID in (Select distinct EmployeeID from cte_2)

select * from #temp1

--Example 3:
with cte_3 as(
select * from #temp1 where EmployeeID = 101
)

insert into #temp1 select * from cte_3

select * from #temp1