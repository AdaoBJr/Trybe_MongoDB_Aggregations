USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(month INT, year INT)
RETURNS INT READS SQL DATA

BEGIN
DECLARE total_contratados INT;
SELECT COUNT(*)
FROM hr.employees table_employees
WHERE MONTH(table_employees.hire_date) = month AND YEAR(table_employees.hire_date) = year INTO total_contratados;
RETURN total_contratados;    
END $$

DELIMITER ;
