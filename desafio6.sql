SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) 'Nome completo',
J.JOB_TITLE 'Cargo',
JH.START_DATE 'Data de início do cargo',
D.DEPARTMENT_NAME 'Departamento'
FROM hr.job_history JH
INNER JOIN hr.employees E
ON E.JOB_ID = JH.JOB_ID
INNER JOIN hr.jobs J
ON J.JOB_ID = JH.JOB_ID
INNER JOIN hr.departments D
ON JH.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
