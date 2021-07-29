DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN employee_email VARCHAR(500))
BEGIN
SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
d.DEPARTMENT_NAME AS Departamento,
j.JOB_TITLE AS Cargo
FROM hr.job_history jh
INNER JOIN hr.employees e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.departments d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
INNER JOIN hr.jobs j ON jh.JOB_ID = j.JOB_ID
WHERE e.EMAIL = employee_email
ORDER BY Departamento, Cargo;
END $$
DELIMITER ;
