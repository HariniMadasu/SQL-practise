-- Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.

select eu.unique_id,e.name
from employees as e
left join employeeuni as eu
on e.id = eu.id
