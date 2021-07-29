SELECT UPPER(CONCAT(em.first_name, ' ', em.last_name)) AS 'Nome completo', 
jh.start_date AS 'Data de início',
em.salary AS 'Salário'
FROM employees AS em
INNER JOIN job_history AS jh
ON em.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.departments AS dep
ON dep.DEPARTMENT_ID = jh.DEPARTMENT_ID
WHERE month(start_date) = 1 OR month(start_date) = 2 OR month(start_date) = 3
ORDER BY `Nome completo`, `Data de início` DESC;
