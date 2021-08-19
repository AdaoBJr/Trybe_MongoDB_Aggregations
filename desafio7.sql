SELECT 
CONCAT(FIRST_NAME, " ", LAST_NAME) "Nome completo",
START_DATE "Data de início",
SALARY "Salário"
FROM job_history h
INNER JOIN employees e ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
