

select * from Sales

select min(TotalAmount) [Min Total Amount] from Sales
select max(TotalAmount) [Max Total Amount] from Sales

select min(quantity) [Min Quantity] from Sales
select max(quantity) [Max Quantity] from Sales

select min(SaleDate) [Min Date] from Sales
select max(SaleDate) [Max Date] from Sales

select min(paymentmethod) [Min payment method] from Sales
select max(paymentmethod) [Max payment method] from Sales

--Show minimum totalamount for each storeID
select storeID, min(totalamount) [Min total amount] from Sales
group by StoreID

--Show maximum totalamount for each storeID
select storeID, max(totalamount) [Max total amount] from Sales
group by StoreID