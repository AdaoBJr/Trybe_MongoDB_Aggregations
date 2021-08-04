USE w3schools;

DELIMITER $$
CREATE TRIGGER data_atual_automatica
	BEFORE INSERT ON w3schools.orders
    FOR EACH ROW
BEGIN 
	SET NEW.orderdate = current_date();
END $$
DELIMITER ;
