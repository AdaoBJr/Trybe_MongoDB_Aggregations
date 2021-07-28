SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) as 'Nome Completo', j.JOB_TITLE as 'Cargo', jh.START_DATE as 'Data de início do cargo', d.DEPARTMENT_NAME as 'Departamento'
FROM hr.employees as e
INNER JOIN hr.job_history as jh
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs as j
ON j.JOB_ID = e.JOB_ID
INNER JOIN hr.departments as d
ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, Cargo;
