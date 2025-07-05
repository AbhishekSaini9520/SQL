


--Check Constraint
--It checks for certain condition that can be applied on the columns of a table, if this condition is not
--fulfilled, we will not be able to insert the records into the table

--Case 1 : Table doesn't exist
create table table_check(
EID int,
FirstName varchar(256),
Age tinyint check(Age >= 10)
)

select * from table_check

insert into table_check values (1,'Mayank',20)

insert into table_check values (2,'Abhinav',9) --Error -> we cannot insert age < 10

update table_check set EID = 11	where EID = 1

--Case 2 : Table exists
alter table table_check
add check (EID > 5)

insert into table_check values(3,'Nitin',34) --Error EID > 5

insert into table_check values(34,'Nitin',34)