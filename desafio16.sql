USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(IN email_da_pessoa VARCHAR(100))
BEGIN
	SELECT COUNT(*) 
	FROM job_history AS jbh
	INNER JOIN employees AS emp
	ON jbh.EMPLOYEE_ID = emp.EMPLOYEE_ID
	WHERE email = email_da_pessoa;
END $$

DELIMITER ;
