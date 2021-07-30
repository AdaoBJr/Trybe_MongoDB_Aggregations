-- Iniciando o projeto
# TRIGGER que, a cada nova inserção na tabela orders, insere automaticamente a data atual na coluna OrderDate

USE w3schools;
DELIMITER $$
CREATE TRIGGER insere_data_order
BEFORE INSERT ON w3schools.orders FOR EACH ROW
BEGIN
SET NEW.OrderDate = NOW();
END $$
DELIMITER ;
