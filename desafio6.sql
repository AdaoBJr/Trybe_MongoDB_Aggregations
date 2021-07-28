SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
  j.job_title AS 'Cargo',
  h.start_date AS 'Data de início do cargo',
  d.department_name AS 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
  ON e.JOB_ID = j.JOB_ID
INNER JOIN hr.job_history AS h
  ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
INNER JOIN hr.departments AS d
  ON h.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC, j.job_title;
