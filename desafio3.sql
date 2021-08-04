SELECT
  job_title as 'Cargo',
  MAX_SALARY - min_salary as 'Diferença entre salários máximo e mínimo'
FROM
  hr.jobs
order by
  (MAX_SALARY - MIN_SALARY),
  job_title;
