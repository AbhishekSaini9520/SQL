

select * into #temp1
from [dbo].[Employees]

select * from #temp1

select * from dbo.Employees
--This "#temp1" file only open in curr window not work in another window

select * into ##temp2
from [dbo].[EmployeeRecords]

select * from ##temp2

select * from dbo.EmployeeRecords
/*This "##temp2" file run in another window in same instance
   and also run in another window of different instance 
   but in both case the current window should be exist (don't delete it/ exit it) */