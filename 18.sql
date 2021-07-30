-- Iniciando o projeto
# histórico de cargos dos funcionários, data de início e de saída, anos que ficou no cargo

USE w3schools;
DELIMITER $$
CREATE TRIGGER insere_data_order
BEFORE INSERT ON w3schools.orders FOR EACH ROW
BEGIN
SET NEW.OrderDate = NOW();
END $$
DELIMITER ;
