SELECT 
    job_title AS Cargo,
    MAX_SALARY - MIN_SALARY AS 'Variação Salarial',
    ROUND(MIN_SALARY / 12, 2) AS 'Média mínima mensal',
    ROUND(MAX_SALARY / 12, 2) AS 'Média máxima mensal'
FROM
    jobs
ORDER BY 2 ASC , 1 ASC;
