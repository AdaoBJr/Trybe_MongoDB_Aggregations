SELECT 
    jobs.JOB_TITLE AS 'Cargo',
    CASE
        WHEN jobs.MAX_SALARY BETWEEN 5000 AND 10000 THEN 'Baixo'
        WHEN jobs.MAX_SALARY BETWEEN 10001 AND 20000 THEN 'Médio'
        WHEN jobs.MAX_SALARY BETWEEN 20001 AND 30000 THEN 'Alto'
        WHEN jobs.MAX_SALARY > 30000 THEN 'Altíssimo'
        ELSE 'Não especificado'
    END AS 'Nível'
FROM
    jobs
ORDER BY Cargo ASC;

-- reference: https://www.w3schools.com/mysql/func_mysql_case.asp
