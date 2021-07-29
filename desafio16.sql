USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_jobs INT;
SELECT COUNT(*)
FROM hr.job_history j
INNER JOIN hr.employees e
ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE e.EMAIL = email INTO total_jobs;
RETURN total_jobs;
END $$

DELIMITER ;
