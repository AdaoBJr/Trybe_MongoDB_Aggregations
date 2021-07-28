SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) as 'Nome completo', jh.START_DATE as 'Data de início', e.SALARY as 'Salário'
FROM hr.employees as e
INNER JOIN
hr.job_history as jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) IN ('01', '02', '03')
ORDER BY `Nome Completo`, jh.START_DATE;
