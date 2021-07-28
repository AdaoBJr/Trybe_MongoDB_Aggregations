-- Iniciando o projeto --
# Cargos com a diferença entre seus salários max e min.

SELECT JOB_TITLE AS 'Cargo', (MAX_SALARY - MIN_SALARY) AS 'Diferença entre salários máximo e mínimo'
FROM jobs ORDER BY (MAX_SALARY - MIN_SALARY) ASC, JOB_TITLE ASC;