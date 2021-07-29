USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(inputEmail VARCHAR(50))
RETURNS INT READS SQL DATA

BEGIN  
DECLARE valor INT;
SELECT  COUNT(*) FROM hr.employees AS E
INNER JOIN 	hr.job_history  AS HR
ON HR.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE EMAIL = inputEmail
INTO valor;
RETURN valor;
END $$

DELIMITER ;
