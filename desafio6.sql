SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE as 'Cargo',
h.START_DATE AS 'Data de início',
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees as e
INNER JOIN hr.job_history as h
ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs as j
ON h.JOB_ID = j.JOB_ID
INNER JOIN hr.departments as d
ON d.DEPARTMENT_ID = h.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;
