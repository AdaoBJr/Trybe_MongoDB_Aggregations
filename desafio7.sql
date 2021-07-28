SELECT UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) 'Nome completo',
JH.START_DATE 'Data de início',
E.SALARY 'Salário'
FROM hr.employees E
INNER JOIN hr.job_history JH
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE MONTH(JH.START_DATE) IN (1, 2, 3)
ORDER BY `Nome Completo`, `Data de início`;
