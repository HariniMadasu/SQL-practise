# Write your MySQL query statement below
with salaryrank as(
        select 
            e.name,
            e.salary,
            e.departmentid,
            dense_rank() over ( partition by e.departmentid order by salary desc) as salary_rank
        from employee e
) 
select
    d.name as department,
    s.name as employee,
    s.salary  
from salaryrank s
inner join department d
on s.departmentid = d.id
where s.salary_rank<=3

