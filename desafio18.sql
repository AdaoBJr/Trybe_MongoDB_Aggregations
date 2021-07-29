SELECT
CONCAT(FIRST_NAME, ' ', LAST_NAME) as 'Nome completo',
CONCAT(SUBSTRING(jh.START_DATE, 9,2), '/', SUBSTRING(jh.START_DATE, 6, 2), '/', SUBSTRING(jh.START_DATE, 1, 4)) as 'Data de início',
CONCAT(SUBSTRING(jh.END_DATE, 9,2), '/', SUBSTRING(jh.END_DATE, 6, 2), '/', SUBSTRING(jh.END_DATE, 1, 4)) as 'Data de rescisão',
ROUND(DATEDIFF(jh.END_DATE,jh.START_DATE)/365, 2) as 'Anos trabalhados'
FROM hr.employees as e
INNER JOIN hr.job_history as jh
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
