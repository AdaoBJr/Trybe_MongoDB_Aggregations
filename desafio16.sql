USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_empregos INT;
SELECT COUNT(jh.JOB_ID) FROM hr.job_history AS jh
INNER JOIN hr.employees AS emp
WHERE emp.EMPLOYEE_ID = jh.EMPLOYEE_ID AND emp.EMAIL = email
GROUP BY emp.EMPLOYEE_ID
INTO total_empregos;
RETURN total_empregos;
END $$
DELIMITER ;
