

select * from EmployeeRecords_1
order by EmployeeID,Email

select distinct * into #1 from EmployeeRecords_1

select * from #1 

truncate table EmployeeRecords_1

insert into EmployeeRecords_1 select * from #1

--Record with Lower Employee ID should remain
with cte as(
select *, DENSE_RANK() over(partition by Email order by EmployeeID) [DR]
from EmployeeRecords_1
)
--select * from cte
delete from cte where DR = 2

select * from EmployeeRecords_1

select * into EmployeeRecords_2 from #1

select * from EmployeeRecords_2

--Retail the record with higher Employee id
with cte1 as(
select *, DENSE_RANK() over(partition by Email order by EmployeeID desc) [DR]
from EmployeeRecords_2
)
--select * from  cte1
delete from cte1 where DR = 2

-------------
select * from EmployeeRecords_1
select * from EmployeeRecords_2