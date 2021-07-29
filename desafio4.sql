SELECT 
    (SELECT 
            jobs.JOB_TITLE
        FROM
            hr.jobs
        WHERE
            jobs.JOB_ID = hr.employees.JOB_ID) AS Cargo,
    ROUND(SUM(employees.SALARY) / COUNT(*)) AS 'Média salarial',
    CASE
        WHEN ROUND(SUM(employees.SALARY) / COUNT(*)) <= 5800 THEN 'Júnior'
        WHEN
            ROUND(SUM(employees.SALARY) / COUNT(*)) > 5800
                AND ROUND(SUM(employees.SALARY) / COUNT(*)) <= 7500
        THEN
            'Pleno'
        WHEN
            ROUND(SUM(employees.SALARY) / COUNT(*)) > 7500
                AND ROUND(SUM(employees.SALARY) / COUNT(*)) <= 10500
        THEN
            'Sênior'
        ELSE 'CEO'
    END AS Nível
FROM
    hr.employees
GROUP BY employees.JOB_ID
ORDER BY ROUND(SUM(employees.SALARY) / COUNT(*));
