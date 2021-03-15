SELECT -- categories.category_name, 
IF (GROUPING (categories.category_name) = 1 , 'GrandTotal', categories.category_name) AS category_name, 
IF (GROUPING (product_name) = 1 , 'total of category', product_name) AS product_name
-- , orders.order_id , order_items.quantity, order_items.item_price
, SUM( order_items.quantity ) AS total_quantity_purchased
 From order_items 
 Join  orders ON order_items.order_id = orders.order_id
 Join products ON order_items.product_id = products.product_id
 Join categories ON products.category_id = categories.category_id
 group by  category_name , product_name with rollup






-- From order_items, orders, products, categories
-- Where order_items.order_id = orders.order_id AND order_items.product_id = products.product_id
-- AND products.category_id = categories.category_id
-- group by category_name

 
   
 