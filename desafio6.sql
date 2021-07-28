SELECT 
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome completo',
j.JOB_TITLE 'Cargo', e.HIRE_DATE 'Data de início do cargo',
d.DEPARTMENT_NAME 'Departamento'
FROM
employees e
INNER JOIN
jobs j ON j.JOB_ID = e.JOB_ID
INNER JOIN departments d ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, `Cargo`;
