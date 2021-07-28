SELECT
job_title AS 'Cargo',
max_salary - MIN_SALARY AS 'Diferença entre salários máximo e mínimo'
FROM jobs
ORDER BY `Diferença entre salários máximo e mínimo`, `Cargo`;
