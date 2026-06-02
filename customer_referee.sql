-- Finding the names of the customer that are either:
-- 1. referred by any customer with id != 2.
-- 2. not referred by any customer.

select name
from Customer
where referee_id != 2 or referee_id is null
