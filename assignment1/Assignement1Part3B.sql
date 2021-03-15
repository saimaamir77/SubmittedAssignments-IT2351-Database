-- **************************************************************************
-- IT2351 Assignment 1 Part 3b  Samia Amir
-- Query for item where unit price is greater than 16 
-- **************************************************************************
Select title, artist, unit_price 
from items
Where unit_price > 16 
order by unit_price;