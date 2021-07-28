-- SELECT * FROM hr.employees;
SELECT
  j.job_title AS 'Cargo',
  ROUND(AVG(emp.salary), 2) AS 'Média salarial',
  CASE
      WHEN AVG(emp.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
      WHEN AVG(emp.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
      WHEN AVG(emp.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
      WHEN AVG(emp.salary) > 10500 THEN 'CEO'
  END AS 'Senioridade'
FROM
    hr.employees AS emp
    INNER JOIN hr.jobs AS j ON emp.job_id = j.job_id
GROUP BY Cargo
ORDER BY 2, 1;
