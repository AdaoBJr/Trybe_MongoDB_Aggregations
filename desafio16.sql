USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(in_email VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT;
SELECT COUNT(*)
FROM employees AS t1
JOIN job_history AS t2 ON t2.EMPLOYEE_ID = t1.EMPLOYEE_ID
WHERE 
EMAIL = in_email
INTO in_email;
RETURN in_email;
END $$
DELIMITER ;
