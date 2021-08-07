select
  job_title as 'Cargo',
  max_salary - jobs.min_salary as 'Variação Salarial',
  ROUND(min_salary, 2) as 'Média mínima',
	ROUND(max_salary, 2) as 'Média máxima mensal'
from
  hr.jobs
ORDER BY
  max_salary - min_salary,
  job_title;