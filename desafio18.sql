SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome completo',
  CONCAT(
    DAY(j.START_DATE),
    '/',
    MONTH(j.START_DATE),
    '/',
    YEAR(j.START_DATE)
  ) 'Data de início',
  CONCAT(
    DAY(j.END_DATE),
    '/',
    MONTH(j.END_DATE),
    '/',
    YEAR(j.END_DATE)
  ) 'Data de rescisão',
  ROUND(DATEDIFF(j.END_DATE, j.START_DATE) / 365, 2) 'Anos trabalhados'
FROM
  hr.employees e
  INNER JOIN hr.job_history j ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
ORDER BY
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME),
  ROUND(DATEDIFF(j.END_DATE, j.START_DATE), 2)
