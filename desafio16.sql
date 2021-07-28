USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(in_email VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT;
SELECT COUNT(*)
FROM employees E
JOIN job_history JH ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE 
EMAIL = in_email
INTO in_email;
RETURN in_email;
END $$
DELIMITER ;
