-- create and call a stored procedure and attempt to insert a new category--
use saimaamir_guitar_shop;
drop procedure if exists insertCategory;
DELIMITER //
create procedure insertCategory ()
begin
	declare duplicate_entry_for_key int default false;
	declare continue handler for 1062
		set duplicate_entry_for_key = true;
	insert into Categories value (6,"6Guitars");
	
if duplicate_entry_for_key = TRUE then
	Select 'row was not inserted - duplicate key encountered' As message; 
Else
	select '1 row was inserted' AS message;	
end if;
 END//
