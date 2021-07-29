SELECT CONCAT(a.first_name, ' ', last_name) AS 'Nome completo',
b.job_title AS 'Cargo',
c.start_date AS 'Data de início no cargo',
d.department_name AS 'Departamento'
FROM hr.employees AS a
INNER JOIN hr.jobs AS b
ON a.job_id = b.job_id
INNER JOIN hr.job_history AS c
ON a.employee_id = c.employee_id
INNER JOIN hr.departments AS d
ON a.department_id = d.department_id
ORDER BY `Nome completo` DESC, Cargo;
