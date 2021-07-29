USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_recebido VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_de_empregos INT;
SELECT COUNT(*) FROM job_history as h
INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE e.EMAIL = email_recebido 
INTO quantidade_de_empregos;
RETURN quantidade_de_empregos;
END $$
DELIMITER ;
