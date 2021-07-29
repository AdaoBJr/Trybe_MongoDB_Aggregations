USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(param varchar(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT COUNT(jh.EMPLOYEE_ID) FROM job_history jh INNER JOIN employees e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID WHERE EMAIL = param
INTO quantidade;
RETURN quantidade;
END $$
DELIMITER ;
