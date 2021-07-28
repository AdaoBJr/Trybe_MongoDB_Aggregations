SELECT
  JOB_TITLE AS Cargo,
  (MAX_SALARY - MIN_SALARY)
  AS 'Diferença entre salários máximo e mínimo'
FROM hr.jobs
WHERE MAX_SALARY <> MIN_SALARY
ORDER BY JOB_TITLE;
