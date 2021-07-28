SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) 'Nome completo',
J.JOB_TITLE Cargo,
JH.START_DATE 'Data de início do cargo',
D.DEPARTMENT_NAME 'Departamento'
FROM hr.employees E
INNER JOIN hr.job_history JH
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
INNER JOIN hr.jobs J
ON J.JOB_ID = E.JOB_ID
INNER JOIN hr.departments D
ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
