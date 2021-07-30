SELECT
  CONCAT(table_employees.first_name, ' ', table_employees.last_name) AS 'Nome completo',
  table_jobs.job_title AS 'Cargo',
  DATE(table_history.start_date) AS 'Data de início do cargo',
  table_department.department_name AS 'Departamento' 
FROM
  hr.job_history AS table_history 
  INNER JOIN
    hr.employees AS table_employees 
    ON table_employees.EMPLOYEE_ID = table_history.EMPLOYEE_ID 
  INNER JOIN
    hr.jobs AS table_jobs 
    ON table_history.job_id = table_jobs.job_id 
  INNER JOIN
    hr.departments AS table_department 
    ON table_department.DEPARTMENT_ID = table_history.DEPARTMENT_ID 
ORDER BY
  `Nome Completo` DESC,
  table_jobs.job_title;
