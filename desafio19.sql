USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE total_employees INT;
    SELECT COUNT(*)
    FROM hr.employees as e
    WHERE MONTH(e.HIRE_DATE) = mes AND YEAR(e.HIRE_DATE) = ano INTO total_employees;
    RETURN total_employees;
END $$

DELIMITER ;
