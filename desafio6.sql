SELECT 
	CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) `Nome completo`,
    j.JOB_TITLE 'Cargo',
    jh.START_DATE 'Data de início do cargo',
    d.DEPARTMENT_NAME 'Departamento'
FROM hr.employees e
	JOIN hr.jobs j ON e.JOB_ID = j.JOB_ID
    JOIN hr.departments d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
    JOIN hr.job_history jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
GROUP BY e.FIRST_NAME
ORDER BY `Nome completo` DESC, j.JOB_TITLE;
