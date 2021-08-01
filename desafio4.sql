SELECT j.JOB_TITLE as "Cargo" ,
round(avg(e.salary),2) as  "Média salarial",
case 
when round(avg(e.salary),2) between 2000 and 5800 then "Júnior"
when round(avg(e.salary),2) between 5801 and 7500 then "Pleno"
when round(avg(e.salary),2) between 7501 and 10500 then "Sênior"
else "CEO"
end as "Senioridade"
FROM `hr`.`employees` as e
inner join `hr`. `jobs` as j
where j.JOB_ID = e.JOB_ID
group by e.JOB_ID 
order by `Média salarial` , Cargo ;
