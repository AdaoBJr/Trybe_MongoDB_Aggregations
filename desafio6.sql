select 
concat(employees.FIRST_NAME,' ',employees.LAST_NAME) as 'Nome completo', 
jobs.JOB_TITLE as Cargo,
historico.START_DATE as 'Data de início do cargo',
departments.DEPARTMENT_NAME AS 'Departamento'
from hr.job_history as historico
inner join hr.employees as employees
on employees.EMPLOYEE_ID = historico.EMPLOYEE_ID
inner join hr.departments as departments
on historico.DEPARTMENT_ID = departments.DEPARTMENT_ID
inner join hr.jobs as jobs
on historico.JOB_ID = jobs.JOB_ID
order by `Nome Completo` DESC, Cargo ASC
