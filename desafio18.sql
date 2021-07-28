/* REFERENCIA PARA CONVERTER DATA
https://stackoverflow.com/questions/10637581/mysql-date-format-dd-mm-yyyy-select-query
*/
SELECT
CONCAT(t1.FIRST_NAME, ' ',t1.LAST_NAME ) 'Nome completo',
DATE_FORMAT(t2.START_DATE, '%d/%m/%Y') 'Data de início',
DATE_FORMAT(t2.END_DATE, '%d/%m/%Y') 'Data de rescisão',
ROUND(DATEDIFF(t2.END_DATE, t2.START_DATE) / 365, 2) 'Anos trabalhados'
FROM hr.employees AS t1
JOIN hr.job_history AS t2 ON t2.EMPLOYEE_ID = t1.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
