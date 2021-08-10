SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
  DATE_FORMAT(job_h.START_DATE, '%d/%m/%Y') AS 'Data de início',
  DATE_FORMAT(job_h.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
  ROUND(DATEDIFF(job_h.END_DATE, job_h.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM
  employees AS e
  INNER JOIN job_history AS job_h ON e.EMPLOYEE_ID = job_h.EMPLOYEE_ID
ORDER BY
  `Nome completo`,
  `Anos trabalhados`;
