USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE pessoas_contratadas INT;
SELECT COUNT(*)
FROM hr.employees AS e
WHERE MONTH(e.HIRE_DATE) = mes AND YEAR(e.HIRE_DATE) = ano
INTO pessoas_contratadas;
RETURN pessoas_contratadas;
END $$
DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
