SELECT UCASE(CONCAT(e.FIRST_NAME , ' ', e.LAST_NAME)) AS `Nome completo`,
jb.START_DATE AS `Data de início`, e.SALARY AS Salário FROM hr.job_history jb
INNER JOIN hr.employees e ON e.EMPLOYEE_ID = jb.EMPLOYEE_ID 
WHERE MONTH(jb.START_DATE) IN (1,2,3)
ORDER BY `Nome completo`, `Data de início`;
