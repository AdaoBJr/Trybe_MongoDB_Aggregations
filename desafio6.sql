SELECT
  CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
  j.JOB_TITLE AS 'Cargo',
  hist.START_DATE AS 'Data de início do cargo',
  dep.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS emplo
INNER JOIN hr.job_history AS hist
  ON emplo.EMPLOYEE_ID = hist.EMPLOYEE_ID
INNER JOIN hr.jobs AS j
  ON j.JOB_ID = hist.JOB_ID
INNER JOIN hr.departments AS dep
  ON dep.DEPARTMENT_ID = hist.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, Cargo;
