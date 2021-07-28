SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome completo', j.JOB_TITLE 'Cargo', jh.START_DATE 'Data de início do cargo', d.DEPARTMENT_NAME 'Departamento'
FROM hr.employees e
INNER JOIN hr.job_history jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.departments d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
INNER JOIN hr.jobs j ON j.JOB_ID = jh.JOB_ID
ORDER BY `Nome completo` DESC, j.JOB_TITLE;