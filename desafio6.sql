SELECT CONCAT(employees.FIRST_NAME,' ', employees.LAST_NAME) AS `Nome completo`,
jobs.JOB_TITLE AS `Cargo`, jHistory.START_DATE AS 'Data de início do cargo', departments.DEPARTMENT_NAME AS 'Departamento'
from hr.job_history AS jHistory
INNER JOIN
hr.employees AS employees
ON employees.EMPLOYEE_ID = jHistory.EMPLOYEE_ID
INNER JOIN 
hr.jobs AS jobs
ON jobs.JOB_ID = jHistory.JOB_ID
INNER JOIN 
hr.departments AS departments
ON departments.DEPARTMENT_ID = jHistory.DEPARTMENT_ID
ORDER BY `Nome completo` desc, `Cargo` asc;
