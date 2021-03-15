-- ******************************--
-- Saima Amir -- 

 -- *******************************************--
SELECT customer_id, order_date, item_id, order_qty
FROM om.orders, om.order_details
where orders.order_id = order_details.order_id