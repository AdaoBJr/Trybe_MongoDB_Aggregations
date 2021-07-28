SELECT
  CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
  j.job_title AS 'Cargo',
  h.start_date AS 'Data de início do cargo',
  d.department_name AS 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
  ON e.job_id = j.job_id
INNER JOIN hr.job_history AS h
  ON e.employee_id = h.employee_id
INNER JOIN hr.departments AS d
  ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY CONCAT(e.first_name, ' ', e.last_name) DESC, j.job_title;
