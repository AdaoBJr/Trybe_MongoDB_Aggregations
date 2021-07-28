USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(
in_month INT,
in_year INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT;
SELECT 
COUNT(*) 
FROM employees
WHERE 
YEAR(HIRE_DATE) = in_year AND MONTH(HIRE_DATE) = in_month
INTO result;
RETURN result;
END $$
DELIMITER ;
