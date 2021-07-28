SELECT * FROM hr.jobs;
-- job_title, min_salary and max_salary

SELECT 
JOB_TITLE as 'Cargo', (MAX_SALARY - MIN_SALARY) AS 'Diferença entre salários máximo e mínimo'
FROM hr.jobs
ORDER BY 'Diferença entre salários máximo e mínimo';
