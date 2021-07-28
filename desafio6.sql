SELECT * FROM hr.employees;
SELECT * FROM hr.jobs;
SELECT * FROM hr.job_history;
SELECT * FROM hr.departments;

SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
J.JOB_TITLE AS `Cargo`,
H.START_DATE AS `Data de início do cargo`,
D.DEPARTMENT_NAME AS `Departamento`
FROM hr.employees E 
INNER JOIN hr.jobs J ON J.JOB_ID = E.JOB_ID
INNER JOIN hr.departments D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
INNER JOIN hr.job_history H ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
ORDER BY `Nome Completo` DESC, `Cargo`;
