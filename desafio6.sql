SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo', jobs.JOB_TITLE AS 'Cargo', jhist.START_DATE AS 'Data de início do cargo', d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS jhist
INNER JOIN hr.jobs AS jobs ON jhist.JOB_ID = jobs.JOB_ID
INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = jhist.EMPLOYEE_ID
INNER JOIN hr.departments AS d ON d.DEPARTMENT_ID = jhist.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;
