SELECT
  UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) 'Nome completo',
  jh.START_DATE 'Data de início',
  e.SALARY 'Salário'
FROM hr.employees e
INNER JOIN hr.job_history jh
  ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) IN (01, 02, 03)
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME), jh.START_DATE;
