SELECT 
    JOB_TITLE AS Cargo,
    CASE
        WHEN e.SALARY BETWEEN 5000 AND 10000 THEN 'Baixo'
        WHEN e.SALARY BETWEEN 1001 AND 20000 THEN 'Médio'
        WHEN e.SALARY BETWEEN 2001 AND 30000 THEN 'Alto'
        WHEN e.SALARY > 30000 THEN 'Altíssimo'
        ELSE 'Usuário sem salário'
    END AS Nível
FROM
    hr.jobs
        INNER JOIN
    employees AS e ON jobs.JOB_ID = e.JOB_ID
ORDER BY Cargo ASC;
