USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(email VARCHAR(50))
BEGIN
SELECT
  CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
  d.department_name AS 'Departamento',
  j.job_title AS 'Cargo'  
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
  ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.jobs AS j
  ON jh.job_id = j.job_id
INNER JOIN hr.departments AS d
  ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
WHERE e.EMAIL = email
ORDER BY d.DEPARTMENT_NAME, j.job_title;
END $$
DELIMITER ;
CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
