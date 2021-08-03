SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
j.JOB_TITLE AS `Cargo`,
jh.START_DATE AS `Data de início do cargo`,
d.DEPARTMENT_NAME AS `Departamento`
FROM employees AS e
JOIN job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
JOIN jobs as j
ON e.JOB_ID = j.JOB_ID
JOIN departments AS d
ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, `Cargo`;
