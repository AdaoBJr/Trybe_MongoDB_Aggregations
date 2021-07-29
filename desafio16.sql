USE hr
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_func VARCHAR(50))
RETURNS INT READS SQL DATA

BEGIN
DECLARE quantidade_empregos INT;
SELECT COUNT(*)
FROM hr.job_history table_history
INNER JOIN hr.employees e ON table_employess.employee_id = table_history.employee_id
WHERE table_employess.email = email_func INTO quantidade_empregos;    
RETURN quantidade_empregos;
END $$

DELIMITER ;
