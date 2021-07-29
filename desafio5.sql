SELECT j.JOB_TITLE as "Cargo", j.MAX_SALARY-j.MIN_SALARY as "Variação Salarial", round(j.MIN_SALARY/12, 2) as "Média mínima mensal", round(j.max_SALARY/12, 2) as  "Média máxima mensal" 
FROM hr.jobs as j
group by j.JOB_ID
order by `Variação Salarial`, `Cargo`
