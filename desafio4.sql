SELECT
  j.job_title AS 'Cargo',
  ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
CASE
  WHEN AVG(e.SALARY) >= 2000 AND
    AVG(e.SALARY) <= 5800 THEN 'Júnior'
  WHEN AVG(e.SALARY) >= 5801 AND
    AVG(e.SALARY) <= 7500 THEN 'Pleno'
  WHEN AVG(e.SALARY) >= 7501 AND
    AVG(e.SALARY) <= 10500 THEN 'Sênior'
  ELSE 'CEO'
END AS 'Senioridade'
FROM hr.employees e
INNER JOIN hr.jobs j
  ON e.job_id = j.job_id
GROUP BY j.JOB_TITLE
ORDER BY AVG(e.SALARY);
