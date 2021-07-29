SELECT
  table1.job_title AS 'Cargo',
  ROUND(AVG(table2.salary), 2) AS 'Média salarial',
  CASE
    WHEN
      AVG(table2.salary) BETWEEN 2000 AND 5800 
    THEN
      'Júnior' 
    WHEN
      AVG(table2.salary) BETWEEN 5801 AND 7500 
    THEN
      'Pleno' 
    WHEN
      AVG(table2.salary) BETWEEN 7501 AND 10500 
    THEN
      'Sênior' 
    ELSE
      'CEO' 
  END
  AS 'Senioridade' 
FROM
  hr.jobs AS table1 
  INNER JOIN
    hr.employees AS table2 
    ON table1.job_id = table2.job_id 
GROUP BY
  1 
ORDER BY
  2, 1;
