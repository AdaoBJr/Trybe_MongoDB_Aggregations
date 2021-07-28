SELECT
j.job_title AS 'Cargo',
(j.max_salary - j.min_salary) AS 'Diferença entre salários máximo e mínimo'
FROM hr.jobs AS j
ORDER BY (j.max_salary - j.min_salary), j.job_title;
