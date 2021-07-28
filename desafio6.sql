SELECT CONCAT(e.First_NAME , ' ', e.LAST_NAME) AS `Nome completo`, j.JOB_TITLE AS Cargo,
jb.START_DATE AS `Data de início do cargo`, d.DEPARTMENT_NAME AS Departamento FROM hr.job_history jb
INNER JOIN hr.employees e ON jb.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs j ON jb.JOB_ID = j.JOB_ID
INNER JOIN hr.departments d ON  jb.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
