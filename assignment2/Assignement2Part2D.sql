-- ******************************--
-- Saima Amir -- implicit Inner join 
-- 
 -- *******************************************--
 SELECT customer_id, order_date, artist, order_qty, items.title
FROM om.items, om.order_details, om.orders
where orders.order_id = order_details.order_id
AND  items.item_id = order_details.item_id