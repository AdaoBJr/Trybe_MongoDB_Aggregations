DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE qnt_jobs INT;
SELECT COUNT(JH.JOB_ID) FROM hr.job_history JH
INNER JOIN hr.employees E
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE E.EMAIL = email
INTO qnt_jobs;
RETURN qnt_jobs;
END $$
DELIMITER ;

