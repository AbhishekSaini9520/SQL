

select * from Students

--Row_Number -> In case of a tie row numbers are assigned randomly
select *,ROW_NUMBER() over(order by marks desc) [Row Number]
from Students

--Rank -> if there's a tie next rank/ranks will be skipped
select *,RANK() over(order by marks desc) [Rank Funciton]
from Students

--Dense_Rank -> if there's a tie ranks will not be skipped
select *,DENSE_RANK() over(order by marks desc) [Dense Rank Function]
from Students

---------------------------------------------------------------

--Row_Number -> In case of a tie row numbers are assigned randomly
select *,ROW_NUMBER() over(order by marks) [Row Number]
from Students

--Rank -> if there's a tie next rank/ranks will be skipped
select *,RANK() over(order by marks) [Rank Function]
from Students

--Dense_Rank -> if there's a tie ranks will not be skipped
select *,DENSE_RANK() over(order by marks) [Dense Rank Function]
from Students

-----------------------------------------------------------------------

--Row_Number -> In case of a tie row numbers are assigned randomly
select *,ROW_NUMBER() over(order by marks asc) [Row Number]
from Students

--Rank -> if there's a tie next rank/ranks will be skipped
select *,RANK() over(order by marks asc) [Rank Function]
from Students

--Dense_Rank -> if there's a tie ranks will not be skipped
select *,DENSE_RANK() over(order by marks asc) [Dense Rank Function]
from Students