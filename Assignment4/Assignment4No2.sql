select  length( email_address) AS length,
locate( '@', email_address) AS "@",
 substring_index(email_address, '@', 1) AS Username,
 substring_index(email_address, '@',-1) As Domain
from saimaamir_guitar_shop.customers;



 


