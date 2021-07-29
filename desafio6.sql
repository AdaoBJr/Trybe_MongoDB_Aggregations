SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo',
        job.JOB_TITLE AS 'Cargo',
        hist.START_DATE AS 'Data de início do cargo',
        depar.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees employees
INNER JOIN hr.job_history hist ON employees.EMPLOYEE_ID = hist.EMPLOYEE_ID
INNER JOIN hr.jobs job ON hist.JOB_ID = job.JOB_ID
INNER JOIN hr.departments depar ON depar.DEPARTMENT_ID = hist.DEPARTMENT_ID
ORDER BY CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) DESC , Cargo ASC;
