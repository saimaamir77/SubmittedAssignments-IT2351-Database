
-- Assignment7Q2--

-- the stored procedure is named test that contains three SQL statements that are UPDATE, DELETE and UPDATE that are coded as transaction-- 
-- to start this stored procedure declare a variable named sql_error and sets it to FALSE to indicate that no SQL error has occurd--
-- then the second DECLARE statment creates a condition handler that sets the sql_error variable to TRUE if sql error occurs--
-- start transaction statement identifies start of transaction and update the invoice--
-- delete the vendor id--
-- update the vendor name--
-- If statement is uses whether the sql_error occurs when executing any of the statements--
-- If sql error did not occur this code will use the commit statement to commit the changes to the database--
-- otherwise rollback statement rollback the changes-- 
use ap;
DROP PROCEDURE IF EXISTS test;
DELIMITER //
CREATE PROCEDURE test()
BEGIN
  DECLARE sql_error INT DEFAULT FALSE;
  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    SET sql_error = TRUE;
  START TRANSACTION;
    UPDATE invoices   SET vendor_id = 123   WHERE vendor_id = 122;
    DELETE FROM vendor   WHERE vendor_id = 122;
    UPDATE vendors   SET vendor_name = 'FedUP'   WHERE vendor_id = 123;
	IF sql_error = FALSE THEN
		COMMIT;
		SELECT 'The transaction was committed.';
	ELSE
		ROLLBACK;
		SELECT 'The transaction was rolled back.';
	END IF;
END//

DELIMITER ;

CALL test();