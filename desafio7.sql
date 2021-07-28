SELECT
  ucase(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome Completo',
  h.start_date AS 'Data de início',
  e.SALARY
FROM hr.employees AS e
INNER JOIN hr.job_history AS h
  ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
ORDER BY ucase(CONCAT(e.first_name, ' ', e.last_name)) ASC, h.start_date ASC;
