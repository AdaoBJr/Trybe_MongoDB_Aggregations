SELECT
  UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS "Nome completo",
  jhis.START_DATE AS "Data de início",
  e.SALARY AS 'Salário'
FROM hr.employees e
INNER JOIN hr.job_history jhis
  ON e.EMPLOYEE_ID = jhis.EMPLOYEE_ID
WHERE MONTH(jhis.START_DATE) IN (1, 2, 3)
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME), jhis.START_DATE;
