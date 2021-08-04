USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(e_mail VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_jobs INT;
SELECT COUNT(*) FROM job_history
WHERE EMPLOYEE_ID IN (SELECT EMPLOYEE_ID FROM employees WHERE EMAIL = e_mail)
INTO total_jobs;
RETURN total_jobs;
END $$
DELIMITER ;
