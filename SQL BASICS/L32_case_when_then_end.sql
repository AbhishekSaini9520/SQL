

select * from Products

--Example1 : Add a column to categorize each product into categories high, medium & low

select 
*,
case
	when price > 500 then 'high'
	when price >= 200 and price <= 500 then 'medium'
	else 'low'
end as [high/medium/low]
from Products


-- let see what happen when we not using else 
select 
*,
case
	when price > 500 then 'high'
	when price >= 200 and price <= 500 then 'medium'
end as [high/medium/low]
from Products
--result -> low ki jagha per null a jayga

--Example2 : Provide priority to each category & sort the data according to that priority
select * from Products
order by
case
	when Category in ('Electronics') then 1
	when Category in ('Furniture') then 2
	else 3
end

--another way to do this
select * from Products
order by
case
	when Category in ('Electronics') then 1
	when Category in ('Furniture') then 2
	when Category = 'Accessories' then 3
end

select * from Products
order by
case
	when Category = 'Electronics' then 1
	when Category = 'Furniture' then 2
	when Category = 'Accessories' then 3
end