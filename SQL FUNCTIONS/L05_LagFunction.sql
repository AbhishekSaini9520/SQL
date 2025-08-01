

select * from ProfitData

--To add a new column that shows previous month's profit for each product
select *,
lag(Profit) over(partition by Product order by MonthNumber) [Lag Function]
from ProfitData


--We don't want product column inthe output but we want each month's total profit to be show by monthnumber & monthname,Also a 
--new column should be added to show previous month's total profit
select MonthNumber,MonthName,sum(Profit),
lag(sum(Profit)) over(order by MonthNumber) [Previous Month's Lag Function]
from ProfitData
group by MonthNumber,MonthName
order by MonthNumber