CREATE PROCEDURE EXIBIR_HISTORICO_COMPLETO_POR_FUNCIONARIO(IN employeeEmail VARCHAR(100))
BEGIN
SELECT 
CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
d.department_name AS 'Departamento',
j.job_title AS 'Cargo'
FROM hr.employees as e
INNER JOIN hr.job_history as jh on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.departments as d on d.DEPARTMENT_ID = jh.DEPARTMENT_ID
INNER JOIN hr.jobs as j on jh.JOB_ID = j.JOB_ID
WHERE e.EMAIL = employeeEmail
ORDER BY d.DEPARTMENT_NAME, j.JOB_TITLE;
END $$
DELIMITER ;