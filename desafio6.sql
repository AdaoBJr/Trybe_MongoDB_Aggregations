SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
j.JOB_TITLE AS 'Cargo',
e.HIRE_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS e INNER JOIN jobs AS j
ON e.JOB_ID = j.JOB_ID INNER JOIN departments AS d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY 1, 2;