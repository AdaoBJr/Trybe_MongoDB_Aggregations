SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
sd.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM hr.job_history AS sd
INNER JOIN hr.employees AS e
ON e.EMPLOYEE_ID = sd.EMPLOYEE_ID
WHERE MONTH(sd.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome Completo` ASC,
`Data de início` ASC;
