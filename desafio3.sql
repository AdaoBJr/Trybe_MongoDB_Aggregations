SELECT
jobs.JOB_TITLE AS "Cargo",
jobs.MAX_SALARY - jobs.MIN_SALARY AS "Diferença entre salários máximo e mínimo"
FROM hr.employees employees
INNER JOIN hr.jobs jobs
WHERE employees.JOB_ID = jobs.JOB_ID
ORDER BY `Diferença entre salários máximo e mínimo` ASC, Cargo ASC;
