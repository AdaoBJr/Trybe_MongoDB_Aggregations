SELECT
  JOB_TITLE AS 'Cargo',
  CASE
    WHEN MAX_SALARY <= 10000 THEN 'Baixo'
    WHEN MAX_SALARY > 10001 AND
      MAX_SALARY <= 20000 THEN 'Médio'
    WHEN MAX_SALARY > 20001 AND
      MAX_SALARY <= 30000 THEN 'Alto'
    WHEN MAX_SALARY > 30000 THEN 'Altíssimo'
  END AS 'Diferença entre salários máximo e mínimo'
FROM hr.JOBS
ORDER BY Cargo;
