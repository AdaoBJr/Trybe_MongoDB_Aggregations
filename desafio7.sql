SELECT UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS `Nome completo`,
START_DATE AS `Data de início`,
SALARY AS 'Salário'
FROM hr.employees AS E
INNER JOIN hr.job_history AS JH
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE MONTH(START_DATE) IN (01, 02, 03)
ORDER BY `Nome completo`, `Data de início`;
