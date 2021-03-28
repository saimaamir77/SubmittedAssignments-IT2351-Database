select list_price, discount_percent,
ROUND (list_price * discount_percent * .01, 2) AS discount_amount

from saimaamir_guitar_shop.products;