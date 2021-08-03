SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS 'Cargo',
jh.START_DATE AS 'Data de início do cargo',
dpt.DEPARTMENT_NAME AS 'Departamento'
 FROM hr.employees AS employees
 INNER JOIN hr.job_history AS jh
 ON employees.EMPLOYEE_ID = jh.EMPLOYEE_ID
 INNER JOIN hr.jobs AS jobs
 ON jh.JOB_ID = jobs.JOB_ID
 INNER JOIN hr.departments AS dpt
 ON jh.DEPARTMENT_ID = dpt.DEPARTMENT_ID
 ORDER BY `Nome completo` DESC, Cargo DESC;
 