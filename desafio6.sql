SELECT 
CONCAT(e.first_name, ' ', e.last_name) AS 'Nome Completo',
j.JOB_TITLE AS 'Cargo',
h.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM employees AS e
INNER JOIN job_history AS h
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
INNER JOIN jobs AS j 
ON h.JOB_ID = j.JOB_ID
INNER JOIN departments AS d 
ON d.DEPARTMENT_ID = h.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, `Cargo`;
