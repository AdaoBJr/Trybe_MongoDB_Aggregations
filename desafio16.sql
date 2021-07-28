USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(20))
RETURNS INT
READS SQL DATA
BEGIN
DECLARE n INT;
SELECT 
COUNT(*)
FROM hr.employees as e
INNER JOIN hr.job_history AS h
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE e.EMAIL = email
INTO n;
RETURN n;
END $$

DELIMITER $$

