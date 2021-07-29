SELECT 
UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS 'Nome completo',
JB.START_DATE AS 'Data de início',
E.SALARY AS 'Salário'
FROM hr.employees E 
INNER JOIN hr.job_history JB ON JB.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE MONTH(JB.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`, `Data de início`;
