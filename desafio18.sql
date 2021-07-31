SELECT
CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
jh.start_date AS 'Data de início',
jh.end_date AS 'Data de rescisão',
ROUND(DATEDIFF(jh.end_date, jh.start_date) / 365, 2) AS 'Anos trabahados'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON jh.employee_id = e.employee_id
ORDER BY CONCAT(e.first_name, ' ', e.last_name), DATEDIFF(jh.end_date, jh.start_date);
