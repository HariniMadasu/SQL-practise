# Write your MySQL query statement below
select person_name
from (
    select person_name,turn, 
        sum(weight) over(
            order by turn
            rows between unbounded
            preceding and current row
    ) as total_weight
    from queue
) q
where total_weight<=1000
order by total_weight desc
limit 1


