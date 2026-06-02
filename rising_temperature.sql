-- Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).

select w1.id
from weather as w1
join weather as w2
on w1.recorddate = date_add(w2.recorddate, interval 1 day)
where w1.temperature > w2.temperature
