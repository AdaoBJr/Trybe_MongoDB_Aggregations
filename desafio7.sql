SELECT UCASE(CONCAT(e.FIRST_NAME, " ", e.LAST_NAME)) AS `Nome completo`,
h.START_DATE AS `Data de início do cargo`,
e.SALARY AS Salário
FROM hr.job_history AS h
INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
ORDER BY CONCAT(e.FIRST_NAME, " ", e.LAST_NAME), h.START_DATE;
