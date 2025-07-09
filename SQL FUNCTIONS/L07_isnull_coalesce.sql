

select * from Customers

select isnull(null,'null value present')
--If at any how it get the null value it pritn the message otherwise it will print the non-null value

select isnull('abc','null value present')

select isnull(null,null)

select coalesce('A','B','C')
--This will print the first non-null values

select coalesce(null,'B','C')

select coalesce(null,null,'C')

select coalesce(null,null,null) -- error - at least one of the args must be not null

--
select CustomerID , Email, PhoneNumber from Customers

select CustomerID, isnull(Email,'email NA'), isnull(PhoneNumber,'phone NA') from Customers

select CustomerID,coalesce(Email,PhoneNumber,'Contact NA') from Customers