-- select * from orders;
DELIMITER $$

CREATE TRIGGER addCurrentDate
BEFORE INSERT  ON w3schools.orders
FOR EACH ROW
BEGIN
  SET NEW.OrderDate = DATE(NOW());
END $$

DELIMITER ;
