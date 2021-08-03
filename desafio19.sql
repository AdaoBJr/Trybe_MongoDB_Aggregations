USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(current_month VARCHAR(2), current_year VARCHAR(4))
RETURNS INT READS SQL DATA
BEGIN
DECLARE hiredByMonthAndYear INT;
SELECT COUNT(*) AS 'pessoas_contratadas'
FROM employees
WHERE month(hire_date) = current_month and year(hire_date) = current_year
INTO hiredByMonthAndYear;
RETURN hiredByMonthAndYear;
END $$
DELIMITER ;
