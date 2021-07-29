SELECT
  ucase(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo',
  h.start_date AS 'Data de início',
  e.SALARY as 'Salário'
FROM hr.employees AS e
INNER JOIN hr.job_history AS h
  ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
  WHERE MONTH(h.start_date) IN (1, 2, 3)
ORDER BY ucase(CONCAT(e.first_name, ' ', e.last_name)) ASC, h.start_date ASC;
