DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN DECLARE count INT;
SELECT COUNT(*)
FROM hr.job_history AS jhistory
INNER JOIN hr.employees AS employees
ON employees.EMPLOYEE_ID = jhistory.EMPLOYEE_ID
AND employees.EMAIL = email INTO count;
RETURN count;
END $$

DELIMITER $$
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR')
