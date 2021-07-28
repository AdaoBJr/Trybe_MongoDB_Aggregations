SELECT
  CONCAT(UCASE(FIRST_NAME), ' ', UCASE(LAST_NAME)) AS 'Nome completo',
  h.START_DATE AS 'Data de início',
  e.SALARY AS 'Salário'
FROM hr.job_history AS h
INNER JOIN hr.employees AS e
  ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
INNER JOIN hr.jobs AS cargo
  ON cargo.JOB_ID = h.JOB_ID
INNER JOIN hr.departments AS d
  ON d.DEPARTMENT_ID = h.DEPARTMENT_ID
WHERE MONTH(h.START_DATE) IN (1, 2, 3)
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME), h.START_DATE;
