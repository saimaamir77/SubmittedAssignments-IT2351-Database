-- **************************************************************************
-- IT2351 Assignment 1 Part 3c  Samia Amir
-- Query by using Aliases
-- **************************************************************************
Select  customer_first_name AS "First Name", 
		customer_last_name AS "Last Name", 
        customer_city AS "City",
        customer_state As "State"        
from customers
order by "Last Name", "First Name";