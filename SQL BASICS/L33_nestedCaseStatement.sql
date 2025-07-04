

select * from Products

--We need to group the data based on columns category & price into different categories i.e affordable & premium

select 
*,
case
	when Category = 'Electronics' then
		case
			when price >= 300 then 'Premium Electronics'
			else 'Affordable Electronics'
		end
	when Category = 'Furniture' then
		case
			when price >= 200 then 'Premium Furniture'
			else 'Affordable Furniture'
		end
	else 
		case 
			when price >= 25 then 'Premium Accessories'
			else 'Affordable Accessories'
		end
end as [Groups]
from Products

-- Another way
select 
*,
case
	when Category = 'Electronics' then
		case
			when price >= 300 then 'Premium Electronics'
			else 'Affordable Electronics'
		end
	when Category = 'Furniture' then
		case
			when price >= 200 then 'Premium Furniture'
			else 'Affordable Furniture'
		end
	when Category = 'Accessories' then 
		case 
			when price >= 25 then 'Premium Accessories'
			else 'Affordable Accessories'
		end
end as [Groups]
from Products