
-- Single line comment (--)
-- Hi we are learning MS SQL Server 

 --MultiLine comment (/* ... */)
 select * from dbo.Employees

 /*
 we are 
 learning 
 MS SQL
 server
 */


 select * from Employees

 -- fetch only top 2 records from the table
 select top 2 * from Employees

 select top 5 * from Employees

 select top 2 EmployeeID,Salary from Employees

 select top 4 firstname,lastname from Employees
