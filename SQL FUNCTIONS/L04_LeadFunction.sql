

select * from ProfitData

--To add a new column that shows next month's profit for each product
select *, lead(Profit) over(partition by Product order by MonthNumber) [Next Month Profit]
from ProfitData

--We don't want product column inthe output but we want each month's total profit to be show by monthnumber & monthname,Also a 
--new column should be added to show next month's total profit
select MonthNumber,MonthName, sum(Profit) [Profits],
lead(sum(Profit)) over(order by MonthNumber)
from ProfitData
group by MonthNumber,MonthName
