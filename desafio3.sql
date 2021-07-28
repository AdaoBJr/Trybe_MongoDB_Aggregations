SELECT JOB_TITLE as 'Cargo', (MAX_SALARY - MIN_SALARY) as 'Diferença entre salários máximo e mínimo'
FROM hr.jobs 
ORDER BY (MAX_SALARY - MIN_SALARY) ASC,JOB_TITLE; -- deve ser ordenado pelos números, depois pela Letra.
