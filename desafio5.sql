select JOB_TITLE as `Cargo`,
(MAX_SALARY - MIN_SALARY) as `Variação Salarial`,
ROUND(MIN_SALARY/12,2) as 'Média mínima mensal',
ROUND(MAX_SALARY/12,2) as 'Média máxima mensal'
from hr.jobs
ORDER BY `Variação Salarial`, CARGO;
