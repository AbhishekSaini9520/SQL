

select * from append_1

select * from append_2 

select c1,c2,c3 from append_1
union all
select c1,c2,c3 from append_2

select c1,c2,c3 from append_1
union 
select c1,c2,c3 from append_2


--Numbers of columns present in the select list have to be same
--Data Types of the columns have to be same
--Order in which columns are written has to be the same

select c1,c2,c3 from append_1 --C1 is int, C2 is nvarchar, C3 is int
union 
select c1,c3,c2 from append_2

---Aliase names which are specified in 1st select statement will be assigned to the columns
select c1 [a],c2 [b],c3 [c] from append_1 
union 
select c1 [x],c2 [y],c3 [z] from append_2
