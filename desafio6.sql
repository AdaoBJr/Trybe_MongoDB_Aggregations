SELECT 
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome completo',
j.JOB_TITLE 'Cargo', jh.START_DATE 'Data de início do cargo',
(SELECT d.DEPARTMENT_NAME FROM departments d where jh.DEPARTMENT_ID = d.DEPARTMENT_ID) 'Departamento'
FROM
employees e
INNER JOIN job_history jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN
jobs j ON j.JOB_ID = jh.JOB_ID    
ORDER BY `Nome Completo` DESC, `Cargo`;
