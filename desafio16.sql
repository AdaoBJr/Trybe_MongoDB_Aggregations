USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(selectedEmail VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN 
DECLARE employees_count INT;
SELECT
  COUNT(*)
FROM
  hr.employees AS employees
  INNER JOIN hr.job_history AS job_history ON employees.employee_id = job_history.employee_id
WHERE
  employees.email = selectedEmail INTO employees_count;
RETURN employees_count;
END $$
DELIMITER ;
