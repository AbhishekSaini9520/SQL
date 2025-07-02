

select * from Sales

-- Total Amount of each Payment Method
select PaymentMethod,sum(totalamount) [Sum of Sales] from Sales
group by PaymentMethod

-- Total Amount of each Payment Mehod and ProductId
select ProductID,PaymentMethod,sum(totalamount) [Sum of Sales] from Sales
group by ProductID,PaymentMethod
order by ProductID
