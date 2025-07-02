

select * from Sales

--Total Sales, Avg Sales, Total Quantity, Avg Quantity for each distinct product
select 
ProductID,
sum(TotalAmount) as [Sum of Sales],
sum(Quantity) as [Total Quantity],
avg(TotalAmount) as [Avg Amount],
avg(Quantity) as [Avg Quantity]
from Sales
group by ProductID
having sum(TotalAmount) < 700 and sum(Quantity) = 21

-- where clause is use to filter the table while having is use to filter the group data