SELECT JOB_TITLE AS Cargo, MAX_SALARY - MIN_SALARY 'Diferença entre salários máximo e mínimo'
FROM jobs
ORDER BY MAX_SALARY - MIN_SALARY, JOB_TITLE;
