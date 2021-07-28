SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) 'Nome completo', jh.START_DATE 'Data de início', e.SALARY 'Salário'
FROM hr.employees e
INNER JOIN hr.job_history jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.departments d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
INNER JOIN hr.jobs j ON j.JOB_ID = jh.JOB_ID
WHERE MONTH(jh.START_DATE) IN (01, 02, 03)
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME), jh.START_DATE;
