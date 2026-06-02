-- Write a solution to find the confirmation rate of each user.

select 
    s.user_id,
    ifnull(
        round(sum(case when c.action = 'confirmed'
    then 1
    else 0
    end)/count(c.action) , 2), 0) as confirmation_rate

from signups s
left join confirmations c
    on s.user_id = c.user_id
group by s.user_id
