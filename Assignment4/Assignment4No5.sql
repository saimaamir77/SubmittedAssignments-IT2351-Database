-- saimaamir-- in this query we are using analytic functions to get the highest and lowest sales by using first value and last value funtion--
select categories.category_name, products.product_name , 
sum((order_items.item_price - order_items.discount_amount) * order_items.quantity) over( 
partition by category_name, product_name Order by ((order_items.item_price - order_items.discount_amount) * order_items.quantity) 
DESC  ROWS unbounded preceding  )  'total_sales',
FIRST_VALUE(product_name ) 
OVER( PARTITION BY  category_name ORDER BY ((order_items.item_price - order_items.discount_amount) * order_items.quantity) desc) As 'highest_sales',
LAST_VALUE(product_name ) 
OVER( PARTITION BY category_name ORDER BY ((order_items.item_price - order_items.discount_amount) * order_items.quantity)  DESC
RANGE BETWEEN unbounded preceding and unbounded following ) As  'lowest_sales'  
from products Join categories ON products.category_id = categories.category_id 
Join order_items  On order_Items.product_id = products.product_id    ; 
