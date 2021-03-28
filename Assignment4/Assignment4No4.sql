select order_id, order_date,
adddate("2018-3-28", 2) As approx_ship_date,
COALESCE(order_date, 'payement')As  ship_date,
Datediff("2018-03-30", "2018-03-28") AS days_to_ship,
where orders_date  = 'march2018',
from saimaamir_guitar_shop.orders;

