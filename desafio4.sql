SELECT 
    j.job_title AS 'Cargo',
    ROUND(AVG(e.salary), 2) AS 'Média salarial',
    CASE
        WHEN AVG(e.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(e.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(e.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN AVG(e.salary) > 10500 THEN 'CEO'
        ELSE 'não classificado'
    END AS 'Senioridade'
FROM
    hr.jobs as j
        INNER JOIN
    hr.employees as e ON j.job_id= e.job_id
GROUP BY j.job_id
ORDER BY AVG(e.salary) asc, job_title asc
