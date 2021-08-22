USE w3schools;
DELIMITER $$
CREATE TRIGGER gatilho_inserir_data_atual_orderdate
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
  SET new.OrderDate = now();
END $$
DELIMITER;
