SELECT 
    job.JOB_TITLE AS Cargo,
    ROUND(AVG(em.salary), 2) AS 'Média salarial',
    CASE
        WHEN ROUND(AVG(em.salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(em.salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(em.salary), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN ROUND(AVG(em.salary), 2) > 10500 THEN 'CEO'
    END AS Senioridade
FROM
    hr.jobs AS job
        INNER JOIN employees AS em
        ON job.JOB_ID = em.JOB_ID
GROUP BY `Cargo`
ORDER BY `Média salarial` , `Cargo`;
