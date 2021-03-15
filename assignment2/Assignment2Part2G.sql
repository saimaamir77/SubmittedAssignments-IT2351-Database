-- ******************************--
-- Saima Amir -- -- Assignment2Part 2G
-- Primary keys  orders.order_id, items.item_id, customers.customer_id
-- Foreign Keys order_details.order_id, order_detail.item_id, orders.customer_id and show customers in Ohio--
-- *******************************************--
SELECT CONCAT(customer_first_name, customer_last_name) As 'customer name', items.title,  
customers.customer_state
FROM   om.customers, om.orders, om.items, om.order_details
WHERE  orders.order_id = order_details.order_id
AND  customers.customer_id = orders.customer_id
AND    items.item_id = order_details.item_id
AND customers.customer_state = "OH"