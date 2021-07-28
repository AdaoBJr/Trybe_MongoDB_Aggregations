DROP FUNCTION IF EXISTS `buscar_quantidade_de_empregos_por_funcionario`;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employee_email VARCHAR(500))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_de_empregos INT;
SELECT COUNT(jb.JOB_ID) FROM hr.job_history jb
INNER JOIN hr.employees j ON jb.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE j.EMAIL = employee_email
INTO quantidade_de_empregos;
RETURN quantidade_de_empregos;
END $$
DELIMITER ;
