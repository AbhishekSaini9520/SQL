


--Default Constraint
--This constraint to provide default values to columns

--Case 1 : The table does not exist
create table test_default(
EID int default 5,
FirstName varchar(256) default 'Rohit',
LastName varchar(256),
age tinyint
)

select * from test_default

insert into test_default values (1,'Ankit','Singh',23)

insert into test_default(LastName,age) values ('Singh',34)

insert into test_default (LastName) values ('Grover')

--Case 2 : The table already exists
alter table test_default
add default 5 for age

insert into test_default (LastName) values ('Yadav')