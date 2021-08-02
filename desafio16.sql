USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(selectedEmail VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE employees_count INT;
SELECT
	COUNT(*)
FROM
    hr.employees AS e
	INNER JOIN hr.job_history AS jh ON e.employee_id = jh.employee_id
    WHERE e.email = selectedEmail INTO employees_count;
    RETURN employees_count;
END $$

DELIMITER ;
