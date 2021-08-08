select
  CONCAT(employees.first_name, ' ', employees.last_name) as 'Nome completo',
  jobs.job_title as 'Cargo',
  employees.hire_date as 'Data de início do cargo',
  employees.department_id as 'Departamento'
from
  hr.employees as employees
  inner join hr.jobs as jobs on employees.job_id = jobs.job_id
ORDER BY
  `Nome completo` desc,
  `Cargo` asc;
