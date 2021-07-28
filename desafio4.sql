SELECT b.job_title AS `Cargo`,
ROUND(AVG(a.salary), 2) AS `Média salarial`,
CASE
  WHEN AVG(a.salary) > 2000 AND AVG(a.salary) <= 5800 THEN 'Júnior'
  WHEN AVG(a.salary) > 5801 AND AVG(a.salary) <= 7500 THEN 'Pleno'
  WHEN AVG(a.salary) > 7501 AND AVG(a.salary) <= 10500 THEN 'Sênior'
  ELSE 'CEO'
END AS `Senioridade`
FROM hr.employees AS a
INNER JOIN hr.jobs AS b
ON a.job_id = b.job_id
GROUP BY b.job_title
ORDER BY AVG(a.salary) ASC, b.job_title ASC;
