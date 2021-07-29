SELECT
UPPER(CONCAT(employees.FIRST_NAME,' ', employees.LAST_NAME)) AS `Nome completo`,
jHistory.START_DATE AS `Data de início`,
employees.SALARY AS 'Salário'
FROM hr.employees AS employees
JOIN hr.job_history AS jHistory
ON jHistory.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE MONTH(jHistory.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`, `Data de início`;
