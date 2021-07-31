SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
CASE
WHEN DAY(jb.start_date) < 10 THEN CONCAT('0', DAY(jb.start_date), '/', '0', MONTH(jb.start_date), '/', YEAR(jb.start_date))
WHEN MONTH(jb.start_date) < 10 THEN CONCAT(DAY(jb.start_date), '/', '0', MONTH(jb.start_date), '/', YEAR(jb.start_date)) 
ELSE CONCAT(DAY(jb.start_date), '/', MONTH(jb.start_date), '/', YEAR(jb.start_date)) 
END
AS 'Data de início',
CASE
WHEN DAY(jb.end_date) < 10 THEN CONCAT('0', DAY(jb.end_date), '/', '0', MONTH(jb.end_date), '/', YEAR(jb.end_date))
WHEN MONTH(jb.end_date) < 10 THEN CONCAT(DAY(jb.end_date), '/', '0', MONTH(jb.end_date), '/', YEAR(jb.end_date)) 
ELSE CONCAT(DAY(jb.end_date), '/', MONTH(jb.end_date), '/', YEAR(jb.end_date)) 
END
AS 'Data de rescisão',
ROUND(DATEDIFF(jb.end_date, jb.start_date) / 365, 2) 
AS 'Anos trabalhados'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jb 
ON jb.employee_id = e.employee_id
ORDER BY CONCAT(e.first_name, ' ', e.last_name), ROUND(DATEDIFF(jb.end_date, jb.start_date) , 2);
