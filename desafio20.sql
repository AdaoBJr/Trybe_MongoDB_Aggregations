USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) as 'Nome completo',
d.DEPARTMENT_NAME as 'Departamento',
j.JOB_TITLE as 'Cargo'
FROM hr.employees as e
INNER JOIN hr.departments as d ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
INNER JOIN hr.job_history as jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs as j ON j.JOB_ID = jh.JOB_ID
WHERE email = e.EMAIL
ORDER BY d.DEPARTMENT_NAME, j.JOB_TITLE;
END $$

DELIMITER ;
