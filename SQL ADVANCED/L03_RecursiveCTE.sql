

--Recursive CTE
--Factorial of a given number (5)

with [R CTE] AS(
--Anchor Query
select 1 as n

union all
--Recursive Query
select n+1 from [R CTE] where n <= 4
)

select * from [R CTE]

------------
with [R CTE] AS(
--Anchor Query
select 1 as n

union all
--Recursive Query
select n+1 from [R CTE] where n <= 4
)

select exp(sum(log(n))) from [R CTE]