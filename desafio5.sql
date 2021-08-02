select j.job_title as "Cargo",
j.max_salary - j.min_salary as "Variação Salarial",
round(j.min_salary/12, 2) as "Média mínima mensal",
round(j.max_salary/12, 2) as "Média máxima mensal"
from `hr`.`jobs` as j
order by `Variação Salarial` , Cargo
