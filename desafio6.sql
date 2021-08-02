SELECT CONCAT(EM.FIRST_NAME, ' ', EM.LAST_NAME) as 'Nome completo', J.JOB_TITLE as 'Cargo', JH.START_DATE as 'Data de início do cargo', D.DEPARTMENT_NAME as 'Departamento'
FROM hr.employees as EM
INNER JOIN hr.job_history as JH ON JH.EMPLOYEE_ID = EM.EMPLOYEE_ID
INNER JOIN hr.jobs as J ON J.JOB_ID = JH.JOB_ID
INNER JOIN hr.departments as D ON D.DEPARTMENT_ID = EM.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, Cargo;
