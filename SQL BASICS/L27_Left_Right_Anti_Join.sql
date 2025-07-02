

select * from table1

select * from table2

--left anti join
select * from table1 left join table2
on table1.c1 = table2.c1
where table2.c1 is null

--right anti join
select * from table1 right join table2
on table1.c1 = table2.c1
where table1.c2 is null