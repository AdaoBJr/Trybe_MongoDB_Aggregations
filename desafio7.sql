SELECT UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS 'Nome completo',
		hrs.START_DATE AS 'Data de início',
		employees.SALARY AS 'Salário'
FROM hr.job_history hrs
INNER JOIN hr.employees employees ON employees.EMPLOYEE_ID = hrs.EMPLOYEE_ID
WHERE MONTH(hrs.START_DATE) IN (1, 2, 3)
ORDER BY UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)), hrs.START_DATE;
