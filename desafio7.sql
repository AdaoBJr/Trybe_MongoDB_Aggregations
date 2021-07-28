SELECT
  CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
  JH.START_DATE AS 'Data de início',
  E.SALARY AS 'Salário'
FROM hr.employees AS E
INNER JOIN hr.job_history AS JH
  ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
ORDER BY `Nome Completo`,JH.START_DATE;
