SELECT CONCAT(em.first_name, ' ', em.last_name) AS 'Nome completo',
jb.job_title AS 'Cargo', 
jh.start_date AS 'Data de início do cargo',
dep.department_name AS 'Nome do departamento'
FROM employees AS em
INNER JOIN job_history AS jh
ON em.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.jobs AS jb
ON jb.JOB_ID = jh.JOB_ID
INNER JOIN hr.departments AS dep
ON dep.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
