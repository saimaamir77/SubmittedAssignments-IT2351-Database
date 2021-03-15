-- ******************************--
-- Saima Amir -- implicit joins, table customers has primary key customer_id 
-- whereas table orders has foreing key customer_id--
 -- *******************************************--
 SELECT  CONCAT(customer_first_name , customer_last_name) As 'name',  
 customer_city as 'city' , customer_state as 'state' , order_date, shipped_date
 FROM om.customers, om.orders
 where customers.customer_id = orders.customer_id
 order by state, city, customer_last_name, customer_first_name