DELIMITER //

CREATE OR REPLACE PROCEDURE   `sp_test_dynamic_sql`  
CREATE PROCEDURE `sp_test_dynamic_sql` (_min int, _max int) 
BEGIN 

SET @s = 'SELECT * FROM authors WHERE id BETWEEN ? AND ?'; 
SET @min = _min; 
SET @max = _max; 

PREPARE stmt1 FROM @s; 
EXECUTE stmt1 USING @min, @max; 
DEALLOCATE PREPARE stmt1; 

END;  


END;
//

DELIMITER ;