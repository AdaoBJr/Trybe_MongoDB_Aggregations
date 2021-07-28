SELECT 
    JOB_TITLE AS 'Cargo',
    (Max_salary - min_salary) AS 'Diferença entre salários máximo e mínimo'
FROM
    hr.jobs
ORDER BY (Max_salary - min_salary) , cargo;
