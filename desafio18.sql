-- https://pt.stackoverflow.com/questions/247070/como-formatar-data-e-hora-do-mysql-para-o-formato-brasileiro-em-php
SELECT 
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) 'Nome completo',
DATE_FORMAT(JH.START_DATE, '%d/%m/%Y') 'Data de início',
DATE_FORMAT(JH.END_DATE, '%d/%m/%Y') 'Data de rescisão',
ROUND(DATEDIFF(JH.END_DATE, JH.START_DATE) / 365, 2) 'Anos trabalhados'
FROM hr.employees E
INNER JOIN hr.job_history JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
