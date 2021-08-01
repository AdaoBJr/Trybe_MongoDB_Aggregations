USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_employee VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_de_empregos INT;
SELECT COUNT(*)
FROM hr.job_history AS jbh
INNER JOIN hr.employees AS emp
ON jbh.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE email = email_employee
INTO total_de_empregos;
RETURN total_de_empregos;	
END
$$

DELIMITER ;
