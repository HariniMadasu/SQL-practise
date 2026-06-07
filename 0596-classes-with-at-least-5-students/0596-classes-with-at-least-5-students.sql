# Write your MySQL query statement below
select 
    c.class
from (select class, count(student)
                from courses
                group by class 
                having count(student)>=5 ) as c