USE w3schools;
DELIMITER $$
CREATE TRIGGER insert_new_OrderDate
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = DATE(NOW()),
NEW.acao = 'INSERT';
END
DELIMITER $$ ;
