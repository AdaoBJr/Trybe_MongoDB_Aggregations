USE w3schools;
DELIMITER $$

CREATE TRIGGER insert_into_date_orders
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN SET NEW.OrderDate = DATE(Now());
END $$
DELIMITER ;
