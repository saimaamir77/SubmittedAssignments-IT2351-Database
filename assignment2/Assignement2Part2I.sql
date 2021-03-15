-- ******************************--
-- Saima Amir -- 
-- Assignment2Part2I	
-- Columns does not have default value
-- *******************************************--
update items 
set  unit_price = unit_price * 1.10
where unit_price > 17 ;