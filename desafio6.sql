SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
  j.JOB_TITLE AS Cargo,
  e.HIRE_DATE AS 'Data de início do cargo',
  d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS e
JOIN hr.jobs AS j
  ON j.JOB_ID = e.JOB_ID
JOIN hr.departments AS d
  ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
ORDER BY 1 DESC, 2;
