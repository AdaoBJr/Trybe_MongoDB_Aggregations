SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS `Nome completo`,
jh.START_DATE AS `Data de início`,
e.SALARY AS `Salário`
FROM employees AS e
JOIN job_history as jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) = 1 OR MONTH(jh.START_DATE) = 2 OR MONTH(jh.START_DATE) = 3
ORDER BY `Nome completo`, `Data de início` ASC;
