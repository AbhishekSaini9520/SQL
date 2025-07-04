

select * from student_details

insert into student_details(Age,event_date)
values (34,'2023-10-04'),(43,'2019-01-01'),(19,'2022-08-08')

--Datetype of column age is tinyint ( 0 to 255 )

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'student_details'

insert into student_details (age)
values (256)
--Throw an error
--Msg 220, Level 16, State 2, Line 12
--Arithmetic overflow error for data type tinyint, value = 256.