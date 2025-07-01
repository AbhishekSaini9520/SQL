

select * from Sales

select max(TotalAmount) as [Maximum Amount] from Sales

select max(SaleDate) as [Sale Date] from Sales

select max(PaymentMethod) as [Max Payment Method] from Sales

-- Group by 
-- maximum quantity sold for each productID
--select ProductID,max(Quantity) from Sales -- this will throw an error because we use aggregation on column quantity but not in product id
											-- to solve this use group by
select ProductID,max(Quantity) [Max Quantity] from Sales
group by ProductID

--Maximum Total Amount for all distinct dates in saledate column
select SaleDate,max(TotalAmount) as [Maximum total amount] from Sales
group by SaleDate