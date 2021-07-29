SELECT CONCAT(em.first_name, ' ', em.last_name) AS 'Nome completo',
jb.job_title AS 'Cargo', 
jh.start_date AS 'Data de início do cargo',
dep.department_name AS 'Departamento'
FROM employees AS em
INNER JOIN job_history AS jh
ON em.employee_id = jh.employee_id
INNER JOIN hr.jobs AS jb
ON jb.job_id = jh.job_id
INNER JOIN hr.departments AS dep
ON dep.department_id = jh.department_id
ORDER BY `Nome completo` DESC, Cargo;
