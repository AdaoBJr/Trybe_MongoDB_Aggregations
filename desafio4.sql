select * from hr.employees;
select * from hr.jobs;
SELECT j.JOB_TITLE as 'Cargo', avg(e.salary) as 'Média salarial',
case
	when avg(e.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
    when avg(e.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
	when avg(e.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
    ELSE 'CEO'
end as 'Senioridade'
from  hr.employees as e
inner join hr.jobs as j
on e.JOB_ID = j.JOB_ID
group by e.JOB_ID
order by avg(e.salary), j.JOB_TITLE;
