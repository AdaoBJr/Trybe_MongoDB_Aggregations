DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_func VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_empregos INT;
SELECT COUNT(*)
FROM hr.job_history jh
INNER JOIN hr.employees e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.EMAIL = email_func INTO quantidade_empregos;    
RETURN quantidade_empregos;
END $$
DELIMITER ;