SELECT JOB_TITLE as "Cargo",
case when MAX_SALARY between 5000 and 1000 then "Baixo"
when MAX_SALARY between 10001 and 20000 then "Médio"
when MAX_SALARY between 200001 and 30000 then "Alto"
when MAX_SALARY > 30000 then "Altíssimo"
else  MAX_SALARY end as "Nível" 
FROM hr.jobs 
order by Cargo ;
