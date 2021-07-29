SELECT concat(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome Completo', jobs.JOB_TITLE AS 'Cargo', job_history.START_DATE AS 'Data de início do cargo', departments.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS employees
INNER JOIN hr.jobs AS jobs
INNER JOIN hr.job_history AS job_history
ON job_history.JOB_ID = jobs.JOB_ID
ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
INNER JOIN hr.departments AS departments
ON job_history.DEPARTMENT_ID = departments.DEPARTMENT_ID
ORDER BY concat(employees.FIRST_NAME, ' ', employees.LAST_NAME) DESC, jobs.JOB_TITLE;
