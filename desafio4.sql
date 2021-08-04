-- Aprendi a arredondar nesse caso específico  nesse link: https://www.devmedia.com.br/forum/formatar-decimal-dentro-da-consulta-sql/158148
SELECT 
    j.JOB_TITLE AS 'Cargo',
    round(AVG(e.salary), 2) AS 'Média salarial',
    CASE
        WHEN AVG(e.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(e.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(e.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS j ON e.JOB_ID = j.JOB_ID
GROUP BY e.JOB_ID
ORDER BY AVG(e.salary) , j.JOB_TITLE;
