SELECT
  UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo',
  jh.start_date AS 'Data de início',
  salary AS 'Salário'
FROM employees AS e
INNER JOIN job_history AS jh
  ON e.employee_id = jh.employee_id
ORDER BY UCASE(CONCAT(e.first_name, ' ', e.last_name)), jh.start_date;
