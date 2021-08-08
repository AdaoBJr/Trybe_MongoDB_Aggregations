-- https://pt.stackoverflow.com/questions/247070/como-formatar-data-e-hora-do-mysql-para-o-formato-brasileiro-em-php
SELECT
  CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) 'Nome completo',
  DATE_FORMAT(J.START_DATE, '%d/%m/%Y') 'Data de início',
  DATE_FORMAT(J.END_DATE, '%d/%m/%Y') 'Data de rescisão',
  ROUND(DATEDIFF(J.END_DATE, J.START_DATE) / 365, 2) 'Anos trabalhados'
FROM
  hr.employees E
  INNER JOIN hr.job_history J ON E.EMPLOYEE_ID = J.EMPLOYEE_ID
ORDER BY
  `Nome completo` ASC,
  `Anos trabalhados` ASC;
