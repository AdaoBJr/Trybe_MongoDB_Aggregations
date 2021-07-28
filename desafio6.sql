select CONCAT(FIRST_NAME,' ', LAST_NAME) AS 'Nome completo', j.JOB_TITLE as 'Cargo', HIRE_DATE as 'Data de início do cargo',  dep.DEPARTMENT_NAME as 'Departamento' from hr.employees as emplo
inner join hr.departments AS dep ON emplo.DEPARTMENT_ID = dep.DEPARTMENT_ID
inner join hr.job_history as hist on emplo.EMPLOYEE_ID = hist.EMPLOYEE_ID
inner join hr.jobs as j on emplo.JOB_ID = j.JOB_ID
order by `Nome Completo`, `Cargo`;
