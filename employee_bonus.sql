-- Write a solution to report the name and bonus amount of each employee who satisfies either of the following:
-- 1. The employee has a bonus less than 1000.
-- 2. The employee did not get any bonus.

select all
    e.name,
    b.bonus
from employee e
left join bonus b
    on e.empId = b.empId
where b.bonus <1000 or b.bonus is null
