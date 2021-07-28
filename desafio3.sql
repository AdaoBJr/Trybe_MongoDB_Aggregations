SELECT 
    j.JOB_TITLE AS 'Cargo',
    j.MAX_SALARY - j.MIN_SALARY AS 'Diferença entre salários máximo e mínimo'
FROM
    hr.jobs j
ORDER BY j.MAX_SALARY - j.MIN_SALARY ASC , Cargo ASC
