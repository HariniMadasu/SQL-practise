# Write your MySQL query statement below
with ct as(
    select 
        id,
        student,
        row_number() over(order by id) as rn,
        lead(student) over (order by id) as next_student,
        lag(student) over (order by id) as prev_student
    from seat
)
select 
    id,
    case
    when rn%2=1 then coalesce(next_student,student) else prev_student
    end as student
from ct
order by id