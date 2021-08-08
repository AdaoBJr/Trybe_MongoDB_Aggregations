SELECT 
	  UCASE(CONCAT(emplo.FIRST_NAME, ' ', emplo.LAST_NAME)) AS 'Nome completo',
    job_h.START_DATE AS 'Data de início',
    emplo.SALARY AS 'Salário'
FROM employees AS emplo
INNER JOIN job_history AS job_h ON emplo.EMPLOYEE_ID = job_h.EMPLOYEE_ID
WHERE MONTH(job_h.start_date) IN (01, 02, 03)
ORDER BY emplo.first_name ASC , job_h.START_DATE ASC;
