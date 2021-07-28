SELECT 
    job_title AS 'Cargo',
    AVG(salary) AS 'Média salarial',
    CASE
        WHEN AVG(salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.jobs AS table1
        JOIN
    hr.employees AS table2 ON table1.job_id = table2.job_id
GROUP BY 1
ORDER BY 2 , 1;
