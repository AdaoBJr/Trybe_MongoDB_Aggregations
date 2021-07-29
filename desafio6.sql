SELECT
  CONCAT(table_employees.first_name, ' ', table_employees.last_name) AS 'Nome completo',
  table_jobs.job_title AS 'Cargo',
  DATE(table_history.start_date) AS 'Data de início do cargo',
  table_departments.department_name AS 'Departmento' 
FROM
  hr.job_history AS table_history 
  INNER JOIN
    hr.employees AS table_employees 
    ON table_employees.employee_id = table_history.employee_id 
  INNER JOIN
    hr.jobs AS table_jobs 
    ON table_history.job_id = table_jobs.job_id 
  INNER JOIN
    hr.departments AS table_departments 
    ON table_departments.department_id = table_history.department_id 
ORDER BY
  `Nome Completo` DESC,
  table_jobs.job_title;
