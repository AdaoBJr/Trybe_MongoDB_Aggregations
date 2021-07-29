SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
DATE_FORMAT(h.START_DATE, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(h.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(h.END_DATE, h.START_DATE) / 365, 2)  AS 'Anos trabalhados'
FROM employees AS e
INNER JOIN job_history AS h
ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;

-- Source https://www.w3schools.com/mysql/func_mysql_date_format.asp
