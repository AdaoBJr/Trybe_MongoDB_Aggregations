SELECT
  j.job_title AS 'Cargo',
  ROUND(AVG(e.salary), 2) AS 'Média salarial',
  CASE
    WHEN ROUND(AVG(e.salary), 2) >= 2000 AND
      ROUND(AVG(e.salary), 2) <= 5800 THEN 'Júnior'
    WHEN ROUND(AVG(e.salary), 2) >= 5801 AND
      ROUND(AVG(e.salary), 2) <= 7500 THEN 'Pleno'
    WHEN ROUND(AVG(e.salary), 2) >= 7501 AND
      ROUND(AVG(e.salary), 2) <= 10500 THEN 'Sênior'
    ELSE 'CEO'
  END AS 'Senioridade'
FROM employees AS e
INNER JOIN jobs AS j
  ON j.job_id = e.job_id
GROUP BY j.job_title
ORDER BY ROUND(AVG(e.salary), 2), j.job_title;
