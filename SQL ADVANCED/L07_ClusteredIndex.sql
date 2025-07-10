

create database test_index

use test_index 

drop table if exists students

create table Students ( id int, name nvarchar(50), age int, gender varchar(20))

insert into Students values
(1,'Raj',23,'M'),
(4,'Nitin',25,'M'),
(3,'Priya',21,'F'),
(2,'Nikita',20,'F'),
(5,'Monica',20,'F')

select * from Students

create clustered index IX_1 on Students(id)

select * from Students

drop index Students.IX_1

create clustered index IX_2 on Students(id desc)

select * from Students

drop index Students.IX_2

create clustered index IX_3 on Students(gender desc,age asc)
drop index Students.IX_3

select * from Students