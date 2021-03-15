select count(*) AS number_of_orders,
sum(ship_amount) AS ship_value
from saimaamir_guitar_shop.orders