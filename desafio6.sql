-- SELECT * FROM hr.employees

SELECT
  CONCAT(e.first_name,' ',e.last_name) AS 'Nome completo',
  j.job_title AS 'Cargo',
  jh.start_date AS 'Data de início do cargo',
  d.department_name AS 'Departamento'

FROM
    hr.employees AS e
    INNER JOIN hr.jobs AS j ON e.job_id = j.job_id
    INNER JOIN hr.departments AS d ON e.department_id = d.department_id
    INNER JOIN hr.job_history AS jh ON e.employee_id = jh.employee_id

ORDER BY 1 DESC, 2;
