/* REFERENCIA PARA CONVERTER DATA
https://stackoverflow.com/questions/10637581/mysql-date-format-dd-mm-yyyy-select-query
*/
SELECT
CONCAT(E.FIRST_NAME, ' ',E.LAST_NAME ) 'Nome completo',
DATE_FORMAT(JH.START_DATE, '%d/%m/%Y') 'Data de início',
DATE_FORMAT(JH.END_DATE, '%d/%m/%Y') 'Data de rescisão',
ROUND(DATEDIFF(JH.END_DATE, JH.START_DATE) / 365, 2) 'Anos trabalhados'
FROM hr.employees E
JOIN hr.job_history JH ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
