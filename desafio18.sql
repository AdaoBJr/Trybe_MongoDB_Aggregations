SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
  CONCAT(
    CASE
      WHEN DAY(jh.START_DATE) < 10 THEN CONCAT('0', DAY(jh.START_DATE))
      ELSE DAY(jh.START_DATE)
    END,
    '/',
    CASE
      WHEN MONTH(jh.START_DATE) < 10 THEN CONCAT('0', MONTH(jh.START_DATE))
      ELSE MONTH(jh.START_DATE)
    END,
    '/',
    YEAR(jh.START_DATE)
  ) AS 'Data de início',
  CONCAT(
    CASE
      WHEN DAY(jh.END_DATE) < 10 THEN CONCAT('0', DAY(jh.END_DATE))
      ELSE DAY(jh.END_DATE)
    END,
    '/',
    CASE
      WHEN MONTH(jh.END_DATE) < 10 THEN CONCAT('0', MONTH(jh.END_DATE))
      ELSE MONTH(jh.END_DATE)
    END,
    '/',
    YEAR(jh.END_DATE)
  ) AS 'Data de rescisão',
  ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM
  hr.employees AS e
  INNER JOIN hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
  INNER JOIN hr.jobs AS j ON jh.JOB_ID = j.JOB_ID
ORDER BY
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME),
  ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365, 2);
