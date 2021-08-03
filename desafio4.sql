select 
j.job_title as 'Cargo', 
round(avg(e.salary), 2) as 'Média salarial', case when avg(e.salary) between 2000 and 5800 then 'Júnior' when avg(e.salary) between 5801 and 7500 then 'Pleno' when avg(e.salary) between 7501 and 10500 then 'Sênior' when avg(e.salary) > 10500 then 'CEO' end as 'Senioridade' from jobs j inner join employees e on j.JOB_ID = e.JOB_ID group by 'Cargo' order by 'Média Salarial', 'Cargo';
