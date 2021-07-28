SELECT 
JOB_TITLE AS `Cargo`,
jobs.MAX_SALARY - jobs.MIN_SALARY as `Diferença entre salários máximo e mínimo`
FROM hr.jobs
ORDER BY `Diferença entre salários máximo e mínimo`, `Cargo` ASC;
