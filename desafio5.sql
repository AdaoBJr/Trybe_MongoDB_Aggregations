SELECT JOB_TITLE AS 'Cargo', MAX_SALARY - MIN_SAlARY AS 'Variação Salarial', 
ROUND(MIN_SALARY, 2) AS 'Média mínima mensal',
ROUND(MAX_SALARY, 2) AS 'Média máxima mensal'
FROM hr.jobs
ORDER BY MAX_SALARY - MIN_SAlARY, JOB_TITLE;
