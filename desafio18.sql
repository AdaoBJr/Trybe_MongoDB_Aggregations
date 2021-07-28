SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(h.START_DATE, '%d/%m/%y') AS 'Data de início',
DATE_FORMAT(h.END_DATE, '%d/%m/%y') AS 'Data de rescisão',
ROUND(DATEDIFF(h.END_DATE, h.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history AS h
INNER JOIN hr.employees as e
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
ORDER BY 1 ASC, 4 ASC;
