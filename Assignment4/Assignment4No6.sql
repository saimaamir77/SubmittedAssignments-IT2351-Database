-- saimaamir--- In this query we are creating viewfrom orders, order_items,and product table---

Create or replace  VIEW order_data AS 
Select order_id, order_date, tax_amount, ship_date 
from orders;

Create or replace View order_products As 
select order_data.*, products.product_name
from order_data Join products on order_data.order_id = product_id;

Create or replace  View Order_item_Products As 
select order_products.*, item_price, discount_amount, (item_price - discount_amount) as  final_price, quantity,
((item_price - discount_amount) * quantity) As item_total
from order_products 
Join Order_Items on order_products.order_id  = order_items.order_id 
Join products on order_items.product_id = products.product_id;