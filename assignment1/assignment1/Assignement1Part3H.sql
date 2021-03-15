-- **************************************************************************
-- IT2351 Assignment 1 Part 3d  Samia Amir
-- Query with date function
-- **************************************************************************
Select 
 DATE_FORMAT ( order_date, '%m/%d/%y') ,
DATE_FORMAT ( shipped_date, '%m/%d/%y'),
 (shipped_date - order_date) AS Days_to_Ship
from orders
order by customer_id, Days_to_Ship;