

select * from dbo.Employees

select * into #3 from dbo.Employees

select * from #3

-- Delete is used to delete certain record from the table
--delete the data where the lastname is empty and dempartment is 0
delete from #3
where LastName = '' or Department = '0'

select * from #3

-- let see if we not use the the where clause
select * into #4 from dbo.Employees
select * from #4

delete from #4	-- this will delete the whole data of table but the structure remains intact
select * from #4

select * from #3

-- truncate the table - delete all the records from the table but the structure will remain intact
truncate table #3
select * from #3

-- drop - it delete the all record and structure will aslo be removed
drop table #3

--select * from #3 -- throw an error invalid object