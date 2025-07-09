

select * , ROW_NUMBER() over(partition by subject order by marks desc) [Row Number desc]
from Students

select * , RANK() over(partition by subject order by marks desc) [Rank Function desc]
from Students

select * , DENSE_RANK() over(partition by subject order by marks desc) [Dense Rank desc]
from Students

--------------------------------------------------------------------------------------
select * , ROW_NUMBER() over(partition by student_name order by marks desc) [Row Number desc]
from Students

select * , RANK() over(partition by student_name order by marks desc) [Rank Function desc]
from Students

select * , DENSE_RANK() over(partition by student_name order by marks desc) [Dense Rank desc]
from Students

------------------------------------------------------------------------------------------------


select * , ROW_NUMBER() over(partition by subject order by marks) [Row Number asc]
from Students

select * , RANK() over(partition by subject order by marks) [Rank Function asc]
from Students

select * , DENSE_RANK() over(partition by subject order by marks) [Dense Rank asc]
from Students

--------------------------------------------------------------------------------------
select * , ROW_NUMBER() over(partition by student_name order by marks) [Row Number asc]
from Students

select * , RANK() over(partition by student_name order by marks) [Rank Function asc]
from Students

select * , DENSE_RANK() over(partition by student_name order by marks) [Dense Rank asc]
from Students