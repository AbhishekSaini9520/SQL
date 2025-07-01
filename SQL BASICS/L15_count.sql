

select * from Sales

select sum(Quantity) from Sales

select sum(Quantity) as [Total Quantity], sum(totalamount) as [sum Total amount] from Sales

select avg(Quantity) as [Average Quantity] from Sales

select avg(Quantity) as [Average Quantity], avg(totalamount) as [Average amount] from Sales

select * from Sales

-- Sum of quantity , sum of the total amount , average of quantity , avergage of total amount for each distinct productID
select 
ProductID,
sum(Quantity) as [Total Quantity],
sum(TotalAmount) as [Sum of Amount],
avg(Quantity) as [Average Quantity],
avg(TotalAmount) as [Average Amount]
from Sales
group by ProductID

select * from dbo.Sales

--Sum of Quantity, sum of amount, avg of quantity & avg of amount for distinct combinations of ProductID & storeid
select 
ProductID,
StoreID,
sum(Quantity) as [Total Quantity],
sum(totalamount) as [Sum of Amount],
avg(quantity) as [Average Quantity],
avg(totalamount) as [Average Amount]
from dbo.Sales
group by ProductID,StoreID order by ProductID


select * from Sales

select count(*) [Number of rows] from Sales

select count(paymentmethod) [No of Records] from Sales

select count(distinct productID) [Distinct Products] from Sales

select paymentmethod,count(distinct paymentmethod) [Distinct paymentmethod] from Sales
group by PaymentMethod
/* the null value count is 0 because it doesn't count the null values
NULL	0
Cash	1
Credit Card	1
Debit Card	1
*/
select paymentmethod,count(paymentmethod) [paymentmethod] from Sales
group by PaymentMethod
/* here also the null value is 0 , so null is ignored by the count
NULL	0
Cash	3
Credit Card	4
Debit Card	1
*/

select paymentmethod,count(*) [paymentmethod] from Sales
group by PaymentMethod
/* Here the rows are count as 2 which have the paymentmethod is null
NULL	2
Cash	3
Credit Card	4
Debit Card	1
*/