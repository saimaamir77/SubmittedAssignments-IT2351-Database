 SELECT  Format(list_price,1) AS Decimal_price,
  CONVERT( list_price, SIGNED) AS Int_price, 
  cast(list_price AS char(2)) AS signed_price_char,
 cast(list_price AS signed) AS signed_price
FROM products;