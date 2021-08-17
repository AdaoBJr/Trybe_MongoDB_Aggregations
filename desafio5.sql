SELECT JOB_TITLE AS 'Cargo',
(MAX_SALARY - MIN_SALARY) as `Variação Salarial`,
ROUND (MAX_SALARY/12,2) AS 'Média máxima mensal',
ROUND (MIN_SALARY/12,2) AS 'Média minima mensal'
FROM hr.jobs 
ORDER BY `Variação Salarial`, 'Cargo';
