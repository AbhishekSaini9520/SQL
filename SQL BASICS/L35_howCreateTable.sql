

create database Student

create table student_details(
Student_Name nvarchar(256),
Gender char(1),
Age tinyint,
event_date date,
distance decimal(5,2))

-- drop table student_details -> to delete the whole table with structure

select * from student_details

insert into student_details(Student_Name,Gender,Age,event_date,distance)
values ('Raj Mehera','M',25,'2024-08-03',123.11)

insert into student_details
values ('Nitin Singh','M',32,'2023-12-06',119.09)