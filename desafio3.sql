/* 3 - Exiba os cargos com a diferença entre seus salários máximo e mínimo */
SELECT
  j.JOB_TITLE 'Cargo',
  (j.MAX_SALARY - j.MIN_SALARY) `Diferença entre salários máximo e mínimo`
FROM hr.jobs j
ORDER BY `Diferença entre salários máximo e mínimo`, j.JOB_TITLE;
