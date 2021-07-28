SELECT
  UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS "Nome completo",
  jh.start_date AS "Data de início",
  e.salary AS "Salário"
FROM job_history AS jh
INNER JOIN employees AS e
  ON jh.employee_id = e.employee_id
WHERE MONTH(jh.start_date) IN (01, 02, 03)
ORDER BY CONCAT(e.first_name, ' ', e.last_name), jh.start_date;
