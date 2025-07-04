

--Copying Data From existing table to the New table

--Case 1 : The New table simply doesn't exist
--Case 2: The New table structure/New Table exists

--CASE 1 :
select * from dbo.Sales 

--All columns were copied from existing table
--This statement will result in the creation of New_Table_1 which will be having structure & records both
--same as that of dbo.sales table
select * into new_table_1 from dbo.Sales

select * from new_table_1

--Cretain columns to be copied
drop table new_table_1

select productId,saledate into new_table_1 from Sales

select * from new_table_1

--Case2:
select top 0 * into new_table_2 from Sales

select * from new_table_2

--Copy all columns
insert into new_table_2 select * from Sales

--Copy specific columns
select * into new_table_3 from Sales where 1=0

select * from new_table_3

insert into new_table_3 (ProductID,SaleDate) select ProductId,SaleDate from Sales
