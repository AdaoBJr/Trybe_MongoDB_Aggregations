USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT
READS SQL DATA
BEGIN
DECLARE amount INT;
SELECT
COUNT(*)
FROM hr.employees AS e
WHERE MONTH(e.HIRE_DATE) = 6
AND YEAR(e.HIRE_DATE) = 1987
INTO amount;
RETURN amount;
END $$

DELIMITER ;
