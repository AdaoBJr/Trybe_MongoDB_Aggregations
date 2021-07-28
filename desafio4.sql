SELECT j.JOB_TITLE as "Cargo", round(avg(e.SALARY),2) as "Média salarial", 
case 
when avg(e.SALARY)>= 2000 and avg(e.SALARY)<= 5800 then 'Júnior'
when avg(e.SALARY)>= 5801 and avg(e.SALARY)<= 7500 then 'Pleno'
when avg(e.SALARY)>= 7501 and avg(e.SALARY)<= 10500 then 'Sênior'
when avg(e.SALARY)> 10500 then 'CEO'
end as 'Senioridade'
FROM hr.jobs as j
inner join hr.employees as e
on j.JOB_ID = e.JOB_ID
group by j.JOB_TITLE
order by `Média salarial`, `Cargo`
