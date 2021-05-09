-- Assignment7 Q3--
-- the stored procedure is named test that contains two SQL statements that are , DELETE and DELETE that are coded as transaction-- 
-- to start this stored procedure declare a variable named sql_error and sets it to FALSE to indicate that no SQL error has occurd--
-- then the second DECLARE statment creates a condition handler that sets the sql_error variable to TRUE if sql error occurs--
-- start transaction statement identifies start of transaction and update the invoice--
-- delete invoice id 114--
-- delete all line items from the invoice_line_items table--
-- If statement is uses whether the sql_error occurs when executing any of the statements--
-- If sql error did not occur this code will use the commit statement to commit the changes to the database--
-- otherwise rollback statement rollback the changes-- 
USE ap;
DROP PROCEDURE IF EXISTS test;
DELIMITER //
CREATE PROCEDURE test()
BEGIN
  DECLARE sql_error INT DEFAULT FALSE;
  
  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    SET sql_error = TRUE;

  START TRANSACTION;  
	DELETE FROM invoice_line_items
		WHERE invoice_id = 114;
	DELETE FROM invoices
		WHERE invoice_id = 114;
 
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