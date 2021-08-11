USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(80))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_jobs INT;
SELECT COUNT(job_history.job_id)
FROM job_history AS job_history
INNER JOIN employees AS employees
ON job_history.employee_id = employees.employee_id
WHERE employees.email = email
INTO total_jobs;
RETURN total_jobs;
END $$

DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
