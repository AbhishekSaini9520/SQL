

select * from EmployeeRecords

select * into emprecords_bkp from EmployeeRecords

select * from emprecords_bkp
order by EmployeeID,EmployeeName,ManagerID


with cte as(
select 
*,row_number() over(partition by  EmployeeID,EmployeeName,ManagerID order by EmployeeID) [rowNumber]
from emprecords_bkp
)
select * from cte
delete from cte where rowNumber = 2

select * from emprecords_bkp

-----------------------------

select * into emprecords_bkp2 from EmployeeRecords

select * from emprecords_bkp2

select distinct * into #1 from emprecords_bkp2

truncate table emprecords_bkp2

insert into emprecords_bkp2 select * from #1

select * from emprecords_bkp2
