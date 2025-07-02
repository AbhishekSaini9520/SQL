

select * from Sales

-- Difference between where and having
select * from Sales 
where TotalAmount >= 161

select ProductID,sum(TotalAmount) from Sales
group by ProductID
having sum(TotalAmount) < 700

select ProductID,sum(TotalAmount) from Sales
where TotalAmount >= 161
group by ProductID
having sum(TotalAmount) >= 250
order by ProductID desc

select ProductID,sum(TotalAmount) from Sales
where TotalAmount >= 161
group by ProductID
having sum(TotalAmount) >= 250
order by sum(TotalAmount) asc