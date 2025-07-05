

create database constraints

use constraints

--Constraints 
--Conditions that can be applied on columns of a table & these conditions are to be followed while
--inserting records into the table

--Not Null constraint

--Case 1 : We will have to create a new table
create table not_null_table(
EID int not null,
Age tinyint,
FirstName varchar(256)
)

select * from not_null_table

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'not_null_table'

insert into not_null_table values (1,23,'Mayank')

insert into not_null_table values (null,23,'Mayank') --error EID cannot be null

insert into not_null_table values (2,null,'Raj')

--Case 2 : the table already exists
--We want to make firstname column nullable

alter table not_null_table
alter column FirstName varchar(256) not null

insert into not_null_table values (3,34,null) -- throw error firstname cannot be null

-- Now try to alter the age table
alter table not_null_table
alter column Age tinyint not null
-- this will throw an error because age already contains the null value

