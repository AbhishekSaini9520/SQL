
select * from Customers

select * from Orders

select * from Products

--1) Identify pairs of customers who live in the same country
select x.CustomerName,y.CustomerName from Customers x join Customers y on x.Country = y.Country and x.CustomerID <> y.CustomerID and x.CustomerID > y.CustomerID

--2) Find the customer who has spent the most on their orders
select CustomerName from 
(select CustomerName,sum(Price) [Amount Spent],DENSE_RANK() over(order by sum(Price) desc) [DR]
from Customers c inner join Orders o on c.CustomerID = o.CustomerID inner join Products p on o.ProductID = p.ProductID
group by CustomerName) m where DR = 1

--3) Find customers who have ordered more than one type of product
select CustomerName as [Number of Product] from Customers c inner join Orders o on c.CustomerID = o.CustomerID
group by CustomerName
having count(ProductID) > 1


--4) List all the products and their corresponding orders, using a RIGHT JOIN, including products that have never been ordered.
select ProductName,OrderID,p.ProductID from Orders o right join Products p on o.ProductID = p.ProductID

--5) Retrieve all orders placed by customers from the USA
select OrderID from Customers c join Orders o on c.CustomerID = o.CustomerID where Country like 'USA'

--6) Find the names of customers who have ordered a product priced above $500.
select distinct CustomerName from Customers c join Orders o on c.CustomerID = o.CustomerID join Products p on o.ProductID = p.ProductID
where Price > 500

--7) Find customers who have ordered the same product more than once.
select distinct m.CustomerName from
(select CustomerName,ProductID,count(ProductID) [Count] from Customers c join Orders o on c.CustomerID = o.CustomerID
group by CustomerName,ProductID
having count(ProductID)>1) m 