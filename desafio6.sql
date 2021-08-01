SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
j.JOB_TITLE AS Cargo,
sd.START_DATE AS `Data de início do cargo`,
d.DEPARTMENT_NAME AS Departamento
FROM hr.employees AS e
INNER JOIN hr.job_history AS sd ON e.EMPLOYEE_ID = sd.EMPLOYEE_ID
INNER JOIN hr.jobs AS j ON j.JOB_ID = sd.JOB_ID
INNER JOIN hr.departments AS d ON d.DEPARTMENT_ID = sd.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC,
Cargo ASC;
