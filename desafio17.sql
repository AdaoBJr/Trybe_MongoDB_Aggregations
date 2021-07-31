CREATE TRIGGER trigger_order_date_insert
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
SET NEW.OrderDate = DATE(NOW());
