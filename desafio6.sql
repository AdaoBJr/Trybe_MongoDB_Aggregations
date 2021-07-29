SELECT concat(e.FIRST_NAME, ' ', e.LAST_NAME) as "Nome completo", 
job.JOB_TITLE as "Cargo", 
j.START_DATE as "Data de início do cargo", 
d.DEPARTMENT_NAME as 'Departamento'
FROM hr.employees as e
inner join hr.job_history as j on e.EMPLOYEE_ID = j.EMPLOYEE_ID
inner join hr.jobs job ON job.JOB_ID = j.JOB_ID
inner join hr.departments as d on d.DEPARTMENT_ID = j.DEPARTMENT_ID
order by `Nome completo` desc, `Cargo`
