DELIMITER //
CREATE PROCEDURE example (num INT)
BEGIN
DECLARE testCondition CONDITION FOR SQLSTATE '45000';
IF num < 0 THEN
SIGNAL SQLSTATE '01000';
ELSEIF num > 150 THEN
SIGNAL SQLSTATE '45000';
END IF;
END //
DELIMITER ;