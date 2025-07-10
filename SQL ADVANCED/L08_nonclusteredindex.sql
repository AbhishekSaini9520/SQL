

--drop index students.IX_3

select * from Students

create nonclustered index IX_1 on students(id)

create nonclustered index IX_2 on Students(gender desc, age asc)

drop index IX_1 on Students


--More than one non clustered index can exist while that is not the case with clustered index

--Clustered Index determines the physical order in which data is stored in a table while that is
--not the case with non clustered index

--Clustered index is faster than non clustered index because non clustered index needs to refer back to
--table if selected column is not present in it

--Non clustered index requires separate disc space for storage