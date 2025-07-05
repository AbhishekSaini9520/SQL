

--Unique Constraint
--It ensures that a column consists of unique values

--Case 1 : when the table already exists (first study the case 2)
alter table test_table
add unique (LastName)

insert into test_table values (1,24,'Rohit', 'Singh')

insert into test_table values (null,54,'Nitin','Singh') --Error -> Last name should be unique

--Case 2 : We need to create the table
create table test_table(
SID int unique,
Age tinyint not null,
FirstName varchar(256) not null unique,
LastName varchar(256)
)


select * from test_table

insert into test_table values (1,22,'Mayank','Mehera')

insert into test_table values (1,24,'Rohit', 'Singh') -- Id should be unique

insert into test_table values (null,34,'Akhilesh','Jain')

insert into test_table values (null,54,'Nitin','Singh') -- throw error because of null already present so it cannot take duplicates

truncate table test_table