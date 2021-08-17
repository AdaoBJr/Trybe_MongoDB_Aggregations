USE rede_social;

DELIMITER $$
CREATE TRIGGER trigger_order_date_insert
    BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
    SET NEW.OrderDate = NOW();
END $$

DELIMITER ;
