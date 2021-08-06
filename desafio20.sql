DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email_func VARCHAR(50))
BEGIN
SELECT
CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
d.department_name AS 'Departamento',
j.job_title AS 'Cargo'
FROM hr.job_history AS jr
INNER JOIN hr.employees AS e USING(employee_id)
INNER JOIN hr.departments AS d ON d.department_id = jr.department_id
INNER JOIN hr.jobs AS j ON j.job_id = jr.job_id
WHERE e.email = email_func
ORDER BY d.department_name, j.job_title;
END $$
DELIMITER ;
