SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
j.JOB_TITLE AS `Cargo`,
e.HIRE_DATE AS `Data de início do cargo`,
(select DEPARTMENT_NAME
from departments
WHERE e.DEPARTMENT_ID = departments.DEPARTMENT_ID) AS `Departamento`
FROM employees AS e
INNER JOIN jobs AS j
ON e.JOB_ID = j.JOB_ID
ORDER BY `Nome completo` DESC, `Departamento`;
