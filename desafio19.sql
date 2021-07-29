DROP FUNCTION IF EXISTS `exibir_quantidade_pessoas_contratadas_por_mes_e_ano`;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mês INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_pessoas_contratadas_por_mes_e_ano INT;
SELECT COUNT(HIRE_DATE) FROM hr.employees
WHERE MONTH(HIRE_DATE) = mês
AND YEAR(HIRE_DATE) = ano
INTO quantidade_pessoas_contratadas_por_mes_e_ano;
RETURN quantidade_pessoas_contratadas_por_mes_e_ano;
END $$
DELIMITER ;
