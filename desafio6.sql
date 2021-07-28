SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS "Nome completo",
  j.JOB_TITLE AS Cargo,
  jhis.START_DATE AS "Data de início do cargo",
  d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees e
INNER JOIN hr.job_history jhis
  ON e.EMPLOYEE_ID = jhis.EMPLOYEE_ID
INNER JOIN hr.jobs j
  ON j.JOB_ID = jhis.JOB_ID
INNER JOIN hr.departments d
  ON jhis.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME) DESC, j.JOB_TITLE;
