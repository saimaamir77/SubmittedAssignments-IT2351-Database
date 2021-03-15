-- **************************************************************************
-- IT2351 Assignment 1 Part 3d  Samia Amir
-- Query data using Arithmatic  expression
-- **************************************************************************
Select customer_id, order_date, 
		(shipped_date - order_date) AS Days_to_Ship
from orders
order by customer_id, Days_to_Ship;