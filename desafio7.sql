SELECT 
UCASE (CONCAT (FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
jhistory.START_DATE AS 'Data de início',
employees.SALARY AS 'Salário'
FROM hr.employees AS employees
INNER JOIN job_history AS jhistory ON employees.EMPLOYEE_ID = jhistory.EMPLOYEE_ID
WHERE MONTH(jhistory.START_DATE) BETWEEN 01 AND 03
ORDER BY `Nome completo`, `Data de início`;
