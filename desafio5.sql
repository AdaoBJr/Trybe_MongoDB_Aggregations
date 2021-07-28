SELECT job_title AS Cargo,
(max_salary - min_salary) AS 'Variação Salarial',
round(AVG(min_salary/12),2) AS 'Média mínima mensal',
round(AVG(max_salary/12),2) AS 'Média mínima mensal'
FROM jobs
GROUP BY job_title
ORDER BY (max_salary - min_salary) ASC, job_title ASC;
