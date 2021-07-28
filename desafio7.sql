SELECT CONCAT(E.FIRST_NAME,' ',E.LAST_NAME) AS 'Nome completo',
H.START_DATE AS 'Data de início',
E.SALARY AS 'Salário'
FROM hr.job_history H
INNER JOIN hr.employees E
ON E.EMPLOYEE_ID = H.EMPLOYEE_ID
WHERE MONTH(H.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome Completo` ASC, `Data de início`ASC;
