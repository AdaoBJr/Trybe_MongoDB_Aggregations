SELECT
  UCASE(
    CONCAT(
      employees.first_name,
      ' ',
      employees.last_name
    )
  ) AS 'Nome completo',
  jh.start_date AS 'Data de início',
  employees.SALARY AS 'Salário'
FROM
  hr.employees AS employees
  INNER JOIN hr.job_history AS jh ON employees.employee_id = jh.employee_id
WHERE
  MONTH(jh.start_date) IN(01, 02, 03)
ORDER BY
  `Nome completo`,
  `Data de início`;
