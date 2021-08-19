SELECT
CONCAT(e.FIRST_NAME, " ", e.LAST_NAME) "Nome completo",
j.JOB_TITLE "Cargo",
h.START_DATE "Data de início do cargo",
d.DEPARTMENT_NAME "Departamento"
FROM job_history h
INNER JOIN employees e ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN jobs j ON h.JOB_ID = j.JOB_ID
INNER JOIN departments d ON h.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
