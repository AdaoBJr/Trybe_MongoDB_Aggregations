Select CONCAT(e.FIRST_NAME,' ',e.LAST_NAME) as "Nome Completo", j.JOB_TITLE as "Cargo",
jh.START_DATE as "Data de início do cargo",
d.DEPARTMENT_NAME as "Departamento"
from hr.job_history as jh
INNER JOIN hr.employees as e
INNER JOIN hr.jobs as j
INNER JOIN hr.departments as d
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID and jh.JOB_ID = j.JOB_ID and jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, `Cargo`;