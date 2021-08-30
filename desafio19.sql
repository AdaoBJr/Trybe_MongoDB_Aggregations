DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(month INT, year INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE people int;
SELECT COUNT(EMPLOYEE_ID) AS "total"
FROM hr.employees
WHERE MONTH(HIRE_DATE)=month AND YEAR(HIRE_DATE)=year
INTO people;
RETURN people;
END $$
DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);

-- DROP FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano;
