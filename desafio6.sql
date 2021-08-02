SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
j.JOB_TITLE AS 'Cargo',
jobh.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS jobh INNER JOIN jobs AS j
ON jobh.JOB_ID = j.JOB_ID INNER JOIN employees AS e
ON e.EMPLOYEE_ID = jobh.EMPLOYEE_ID INNER JOIN departments AS d
ON d.DEPARTMENT_ID = jobh.DEPARTMENT_ID
ORDER BY 1 DESC, 2;
