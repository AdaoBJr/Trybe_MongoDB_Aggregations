DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(B_EMAIL VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_de_empregos INT;
SELECT COUNT(*) FROM hr.job_history jh INNER JOIN hr.employees e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID WHERE EMAIL = B_EMAIL INTO total_de_empregos;
RETURN total_de_empregos;
END $$
DELIMITER ;
