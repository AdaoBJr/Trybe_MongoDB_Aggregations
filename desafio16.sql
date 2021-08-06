USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN
DECLARE totalJobs INT;
SELECT COUNT(*)
FROM hr.employees EM
INNER JOIN hr.job_history JH ON EM.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE EM.EMAIL = email INTO totalJobs;
RETURN totalJobs;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
