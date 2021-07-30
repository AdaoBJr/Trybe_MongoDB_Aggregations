SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS `Nome completo`,
j.START_DATE AS `Data de início`,
e.SALARY AS `Salário`
FROM hr.job_history AS j
INNER JOIN hr.employees AS e ON j.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(START_DATE) = 1 OR MONTH(START_DATE) = 2 OR MONTH(START_DATE) = 3 
ORDER BY `Nome completo`, `Data de início`;
