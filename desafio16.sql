USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_contact VARCHAR(200))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE result INT;
  SELECT
    COUNT(*)
  FROM hr.job_history j
  INNER JOIN hr.employees e
    ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
  WHERE e.EMAIL = email_contact INTO result;
  RETURN result;
END $$

DELIMITER ;
