SELECT 
    JOB_TITLE AS 'Cargo',
(MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
    ROUND(min_salary / 12, 2 as 'Média mínima mensal',
    ROUND(max_salary / 12, 2) as 'Média máxima mensal'
FROM
    hr.jobs
ORDER BY 'Variação Salarial' , cargo;
