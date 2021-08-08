SELECT
	CONCAT(emplo.FIRST_NAME, ' ', emplo.LAST_NAME) AS "Nome completo",
    jobs.JOB_TITLE AS "Cargo",
    job_h.START_DATE AS "Data de início do cargo",
    depart.DEPARTMENT_NAME AS "Departamento"
FROM employees AS emplo
INNER JOIN jobs ON emplo.JOB_ID = jobs.JOB_ID
INNER JOIN job_history AS job_h ON emplo.EMPLOYEE_ID = job_h.EMPLOYEE_ID
INNER JOIN departments AS depart ON emplo.DEPARTMENT_ID = depart.DEPARTMENT_ID
ORDER BY emplo.FIRST_NAME DESC, jobs.JOB_TITLE ASC;
