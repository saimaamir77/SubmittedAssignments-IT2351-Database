-- ******************************--
-- Saima Amir -- -- Assignment2Part 2F
-- Primary keys  orders.order_id, items.item_id, customers.customer_id
-- Foreign Keys order_details.order_id, order_detail.item_id, orders.customer_id and show order quantity greater than 1--
 -- *******************************************--
SELECT CONCAT(customer_first_name, customer_last_name) As 'customer name',
        order_date, artist, order_qty, items.title
FROM om.items, om.order_details, om.orders, om.customers
where orders.order_id = order_details.order_id
AND  items.item_id = order_details.item_id
AND  customers.customer_id = orders.customer_id
AND  order_qty > 1