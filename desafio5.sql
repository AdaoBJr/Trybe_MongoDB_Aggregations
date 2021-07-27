SELECT jobs.JOB_TITLE AS 'Cargo',
(jobs.MAX_SALARY - jobs.MIN_SALARY) AS 'Variação Salarial',
(jobs.MIN_SALARY/12) AS 'Média Mínima Mensal',
(jobs.MAX_SALARY/12) AS 'Média máxima mensal'
FROM hr.jobs AS jobs
INNER JOIN hr.employees AS employees
ON jobs.JOB_ID = employees.JOB_ID
GROUP BY (jobs.MAX_SALARY - jobs.MIN_SALARY)
ORDER BY (jobs.MAX_SALARY - jobs.MIN_SALARY) ASC, JOB_TITLE ASC;
