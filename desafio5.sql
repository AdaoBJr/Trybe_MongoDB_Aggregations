SELECT 
    j.JOB_TITLE AS 'Cargo',
    (j.max_salary - j.min_salary) AS 'Variação Salarial',
    ROUND((j.min_salary / 12), 2) AS 'Média mínima mensal',
    ROUND((j.max_salary / 12), 2) AS 'Média máxima mensal'
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS j ON e.JOB_ID = j.JOB_ID
GROUP BY e.JOB_ID
ORDER BY (j.max_salary - j.min_salary) , j.JOB_TITLE;
