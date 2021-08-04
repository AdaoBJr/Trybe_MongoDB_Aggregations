SELECT
  job_title AS 'Cargo',
  CASE
    WHEN max_salary BETWEEN 5000
    and 10000 THEN 'Baixo'
    WHEN max_salary BETWEEN 10001
    and 20000 THEN 'Médio'
    WHEN max_salary BETWEEN 20001
    and 30000 THEN 'Alto'
    WHEN max_salary > 30000 THEN 'Altíssimo'
  END AS 'Nível'
FROM
  hr.jobs
ORDER BY
  job_title ASC;
