SELECT  CONCAT(UCASE(FIRST_NAME), ' ',UCASE(LAST_NAME)) AS 'Nome completo', 

h.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'

FROM job_history AS h
INNER JOIN employees AS e
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID 

INNER JOIN jobs AS cargo
ON cargo.JOB_ID = h.JOB_ID

INNER JOIN departments AS d
ON d.DEPARTMENT_ID = h.DEPARTMENT_ID
WHERE MONTH(h.START_DATE) IN (1,2,3)
ORDER BY `Nome completo`,
`Data de início`;
