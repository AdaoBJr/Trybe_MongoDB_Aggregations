select 
  ucase(concat(E.first_name, ' ', E.last_name)) as `Nome completo`,
  JH.start_date as `Data de início`,
  E.salary as 'Salário'
from hr.employees as E
inner join hr.job_history as JH
on JH.employee_id = E.employee_id
where month(JH.start_date) in (01, 02, 03)
order by `Nome completo` asc, `Data de início`;
