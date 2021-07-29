SELECT
CONCAT(FIRST_NAME, ' ', LAST_NAME) as 'Nome completo',
CONCAT(DAY(jh.START_DATE), '/', MONTH(jh.START_DATE), '/', YEAR(jh.START_DATE)) as 'Data de início',
CONCAT(DAY(jh.END_DATE), '/', MONTH(jh.END_DATE), '/', YEAR(jh.END_DATE)) as 'Data de rescisão',
(YEAR(jh.END_DATE) - YEAR(jh.START_DATE)) as 'Anos trabalhados'
FROM hr.employees as e
INNER JOIN hr.job_history as jh
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
