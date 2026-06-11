# Write your MySQL query statement below
with daily_total as (
    select
        visited_on,
        sum(amount) as daily_amount
    from customer
    group by visited_on
),
metrics as (
    select 
        visited_on,
        sum(daily_amount) over(
            order by visited_on
            rows between 6 preceding and current row
        ) as amount,
        round(avg(daily_amount) over(
            order by visited_on
            rows between 6 preceding and current row
        ),2) as average_amount
    from daily_total
)
select
    visited_on,
    amount,
    average_amount
from metrics
where visited_on>=(select date_add(min(visited_on),interval 6 day) from customer)
order by visited_on