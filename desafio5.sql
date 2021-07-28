SELECT job_title AS `Cargo`,
ROUND((max_salary - min_salary), 2) AS `Variação salarial`,
ROUND((min_salary / 12), 2) AS `Média mínima mensal`,
ROUND((max_salary  / 12),2 ) AS `Média máxima mensal`
FROM hr.jobs
ORDER BY `Variação salarial` ASC, `Cargo` ASC ;
