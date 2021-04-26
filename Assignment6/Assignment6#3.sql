

-- create and call stored functions--  
use saimaamir_guitar_shop;
drop function if exists discount_price;
DELIMITER //
create function discount_price (   item_id_param int   )
  returns  decimal (9,2)
  deterministic reads sql data
  begin
  DECLARE discount_price_var decimal(9,2) ;
  select (item_price - discount_amount )  into dicount_price_var
  from order_items
  where item_id = item_id_param;
  return discount_price_var;
  END//
  delimiter ;
  select discount_price(item_id) AS discount_price
  from order_items
  where item_id= 3;
  

  
  
  

