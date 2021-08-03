SELECT
  CONCAT(f1.first_name, ' ', f1.last_name) AS 'Nome completo funcionário 1',
  f1.salary AS 'Salário funcionário 1',
  f1.phone_number AS 'Telefone funcionário 1',
  CONCAT(f2.first_name, ' ', f2.last_name) AS 'Nome completo funcionário 2',
  f2.salary AS 'Salário funcionário 2',
  f2.phone_number AS 'Telefone funcionário 2'
FROM
  hr.employees AS f1,
  hr.employees AS f2
WHERE
  f1.employee_id != f2.employee_id
  AND f1.job_id = f2.job_id
ORDER BY
  `Nome completo funcionário 1`,
  `Nome completo funcionário 2`;
