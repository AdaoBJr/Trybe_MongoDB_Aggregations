USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailEmployee VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_empregos INT;
SELECT COUNT(e.employee_id) FROM job_history as jh INNER JOIN employees as e ON jh.employee_id = e.employee_id WHERE e.email = emailEmployee INTO total_empregos;
RETURN total_empregos;
END $$
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR') as 'total_empregos';