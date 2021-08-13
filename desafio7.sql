SELECT
UCASE(CONCAT(FIRST_NAME,' ',LAST_NAME)) AS `Nome completo`,
START_DATE AS `Data de início`,
SALARY AS 'Salário'
FROM
hr.job_history AS jh
INNER JOIN
hr.employees AS e
ON
jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE
MONTH(START_DATE) IN (01,02,03)
ORDER BY
`Nome completo`,
`Data de início`;
