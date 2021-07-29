select
  concat(E.FIRST_NAME, ' ', E.LAST_NAME)  as `Nome completo`,
  J.JOB_TITLE as 'Cargo',
  JH.START_DATE as 'Data de início do cargo',
  D.DEPARTMENT_NAME as 'Departamento'
from hr.employees as E
inner join hr.job_history as JH
on E.employee_id = JH.employee_id
inner join hr.jobs as J on JH.job_id = J.job_id
inner join hr.departments as D
on JH.department_id = D.department_id
order by `Nome completo` desc, Cargo asc;
