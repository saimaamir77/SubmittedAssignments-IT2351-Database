-- **************************************************************************
-- IT2351 Assignment 1 Part 3a  Samia Amir
-- Query to select field from table and sort by two fields
-- **************************************************************************

Select customer_first_name , customer_last_name, customer_city, customer_state
from customers
order by customer_state, customer_city asc;