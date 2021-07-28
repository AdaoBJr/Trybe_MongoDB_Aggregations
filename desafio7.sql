SELECT UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) 'Nome completo',
JH.START_DATE 'Data de início',
E.SALARY 'Salário'
FROM hr.job_history JH
INNER JOIN hr.employees E
ON E.JOB_ID = JH.JOB_ID
WHERE MONTH(JH.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
