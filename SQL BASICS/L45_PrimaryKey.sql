
--Primary Key Constraint

--Case 1 : When new is to be created
create table table_pk_1(
eid int primary key,
gender char(1),
age tinyint,
firstname varchar(256)
)

select * from table_pk_1

insert into table_pk_1 values (1,'M',23,'Mayank')

insert into table_pk_1 values (1,'F',19,'Priya') -- error primary key not be same

insert into table_pk_1 values (null,'M',25,'Raj') -- error primary key cannot be null


--Case 2 : Table Already exists
alter table table_pk_1 
add primary key (age)
-- this table already have the primary key so this will throw an error

create table table_pk_2(
sid int not null unique,
firstname varchar(256),
age tinyint not null
)

alter table table_pk_2
add primary key (sid,age)
-- now sid and age combination is act as a primary key

drop table table_pk_2

alter table table_pk_2
add primary key (sid)

select * from table_pk_2 