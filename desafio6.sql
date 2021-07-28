SELECT
  CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
  cargo.JOB_TITLE AS Cargo,
  h.START_DATE AS 'Data de início do cargo',
  d.DEPARTMENT_NAME AS Departamento
FROM hr.job_history AS h
INNER JOIN hr.employees AS e
  ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
INNER JOIN hr.jobs AS cargo
  ON cargo.JOB_ID = h.JOB_ID
INNER JOIN hr.departments AS d
  ON d.DEPARTMENT_ID = h.DEPARTMENT_ID
WHERE CONCAT(FIRST_NAME, ' ', LAST_NAME) IS NOT NULL
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME) DESC, cargo.JOB_TITLE;
