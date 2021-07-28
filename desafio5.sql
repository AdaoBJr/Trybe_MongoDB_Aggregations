SELECT
jobs.JOB_TITLE AS 'Cargo',
(jobs.MAX_SALARY - jobs.MIN_SALARY) AS 'Variação Salarial',
ROUND((jobs.MIN_SALARY/12), 2) AS 'Média mínima Mensal',
ROUND((jobs.MAX_SALARY/12), 2) AS 'Média máxima mensal'
FROM hr.jobs AS jobs
INNER JOIN hr.employees AS employees
ON jobs.JOB_ID = employees.JOB_ID
GROUP BY `Cargo`, `Variação Salarial`, `Média mínima Mensal`, `Média máxima mensal`
ORDER BY `Variação Salarial` ASC, `Cargo` ASC;
