SELECT
  JOB_TITLE AS Cargo,
(MAX_SALARY + MIN_SALARY)/2 AS "Média salarial",
CASE 
WHEN (MAX_SALARY + MIN_SALARY)/2 BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN (MAX_SALARY + MIN_SALARY)/2  BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN (MAX_SALARY + MIN_SALARY)/2  BETWEEN 7501 AND 10500 THEN 'Sênior'
ELSE 'CEO'
END AS `Senioridade` 
FROM hr.jobs;
