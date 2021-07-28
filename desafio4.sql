SELECT 
    jobs.JOB_TITLE AS 'Cargo',
    ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN AVG(e.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(e.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(e.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN AVG(e.SALARY) > 10500 THEN 'CEO'
        ELSE 'Não especificado'
    END AS 'Senioridade'
FROM
    employees e
        INNER JOIN
    jobs ON e.JOB_ID = jobs.JOB_ID
GROUP BY jobs.JOB_TITLE
ORDER BY AVG(e.SALARY) ASC , Cargo ASC;