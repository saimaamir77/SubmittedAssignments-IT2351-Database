SELECT  category_name, products.category_id,  count(*) AS productstotal,  MAX(list_price) AS most_expensive_product 
From categories Join products ON products.category_id = categories.category_id
group by categories.category_id
ORDER BY productstotal DESC
