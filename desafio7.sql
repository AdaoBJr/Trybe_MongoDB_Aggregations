SELECT
  (
    SELECT
      UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME))
    FROM
      hr.employees
    WHERE
      hr.employees.EMPLOYEE_ID = hr.job_history.EMPLOYEE_ID
  ) AS 'Nome completo',
  START_DATE AS 'Data de início',
  (
    SELECT
      SALARY
    FROM
      hr.employees
    WHERE
      hr.employees.EMPLOYEE_ID = hr.job_history.EMPLOYEE_ID
  ) AS 'Salário'
FROM
  hr.job_history
WHERE
  MONTH(START_DATE) IN (1, 2, 3)
ORDER BY(
    SELECT
      UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME))
    FROM
      hr.employees
    WHERE
      hr.employees.EMPLOYEE_ID = hr.job_history.EMPLOYEE_ID
  ),
  START_DATE;
