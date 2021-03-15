-- **************************************************************************
-- IT2351 Assignment 1 Part 3a  Samia Amir
-- Query with concat function
-- **************************************************************************
SELECT customer_last_name, customer_first_name,
 CONCAT(customer_last_name, customer_first_name) AS Name
 FROM customers 
 ORDER By customer_last_name, customer_first_name;