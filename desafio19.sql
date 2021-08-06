USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(theMonth INT, theYear INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE totalContracts INT;
SELECT COUNT(*)
FROM hr.employees
WHERE MONTH(HIRE_DATE) = theMonth AND YEAR(HIRE_DATE) = theYear
INTO totalContracts;
RETURN totalContracts;
END $$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
