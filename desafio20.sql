USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome completo', d.DEPARTMENT_NAME 'Departamento', j.JOB_TITLE 'Cargo'
FROM hr.employees e
INNER JOIN hr.job_history jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.departments d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
INNER JOIN hr.jobs j ON jh.JOB_ID = j.JOB_ID
WHERE e.EMAIL = email
ORDER BY d.DEPARTMENT_NAME, j.JOB_TITLE;
END $$
DELIMITER ;
