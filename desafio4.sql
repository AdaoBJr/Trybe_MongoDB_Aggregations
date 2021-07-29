SELECT 
    jobs.JOB_TITLE AS Cargo,
    ROUND(AVG(e.SALARY)) AS 'Média salarial',
    CASE
        WHEN AVG(e.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(e.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(e.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN AVG(e.SALARY) > 10500 THEN 'CEO'
        ELSE 'Usuário não cadastrado'
    END AS 'Senioridade'
FROM
    hr.jobs
        INNER JOIN
    hr.employees AS e ON jobs.JOB_ID = e.JOB_ID
GROUP BY jobs.JOB_ID
ORDER BY AVG(e.SALARY) ASC , JOB_TITLE ASC;
