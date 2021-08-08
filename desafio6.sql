SELECT
  CONCAT(employees.first_name, ' ', employees.last_name) AS 'Nome completo',
  jobs.job_title AS 'Cargo',
  jh.start_date AS 'Data de início do cargo',
  d.department_name AS 'Departamento'
FROM
  hr.job_history AS jh
  INNER JOIN hr.jobs AS jobs ON jh.job_id = jobs.job_id
  INNER JOIN hr.departments AS d ON jh.department_id = d.department_id
  INNER JOIN hr.employees AS employees ON jh.employee_id = employees.employee_id
ORDER BY
  `Nome completo` desc,
  `Cargo` asc;
