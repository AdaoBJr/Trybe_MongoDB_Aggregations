select j.JOB_TITLE as 'Cargo', ROUND(AVG(employees.SALARY), 2) as 'Média salarial',
case
when ROUND(AVG(e.SALARY), 2) between 2000 and 5800 then 'Júnior'
when ROUND(AVG(e.SALARY), 2) between 5801 and 7500 then 'Pleno'
when ROUND(AVG(e.SALARY), 2) between 7501 and 10500 then 'Sênior'
else 'CEO'
end as 'Senioridade'
from hr.jobs as j
inner join hr.employees as e
on employees.JOB_ID = j.JOB_ID
group by JOB_TITLE
order by ROUND(AVG(e.SALARY), 2) asc, JOB_TITLE asc;