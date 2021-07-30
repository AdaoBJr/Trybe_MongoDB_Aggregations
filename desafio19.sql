-- Iniciando o projeto
# Dado o mês e ano, quantos funcionários foram contratados.

USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE pessoas_contratadas INT;
SELECT COUNT(*)FROM hr.employees AS employe WHERE MONTH(employe.HIRE_DATE) = 6
AND YEAR(employe.HIRE_DATE) = 1987 INTO pessoas_contratadas;
RETURN pessoas_contratadas;
END $$
DELIMITER ;
