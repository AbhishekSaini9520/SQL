

select * from ReportingStructure

select b.EmployeeName [Employee] , a.EmployeeName [Manager]
from ReportingStructure a inner join ReportingStructure b 
on a.EmployeeID = b.ManagerID

union all  

select EmployeeName , null [Manager] from ReportingStructure
where ManagerID is null