
--Foreign Key Constraint

--Case 1 : When the new table has to be created
create table test_primary_key(
id int primary key,
name varchar(256)
)

insert into test_primary_key values (1,'Mayank'),(2,'Raj'),(3,'Jayant')

select * from test_primary_key

create table test_foreign_key(
id int foreign key references test_primary_key (id),
course varchar(256)
)

insert into test_foreign_key values (1,'A')

select * from test_foreign_key

insert into test_foreign_key values (null,'B')

insert into test_foreign_key values (5,'C') --Error conflicted with the foreign key constraint

--Case 2 : Table already exists
create table test_foreign_key_2(
id int,
course varchar(256)
)

alter table test_foreign_key_2
add foreign key (id) references test_primary_key (id)
