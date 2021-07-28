SELECT
UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS 'Nome completo',
hist.START_DATE AS 'Data de início',
employees.SALARY AS 'Salário'
FROM hr.employees AS employees
INNER JOIN hr.job_history AS hist
ON hist.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE MONTH(hist.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo` ASC, hist.START_DATE ASC;
