SELECT j.job_title AS Cargo, round(AVG(e.salary),2) AS 'Média salarial',
CASE
WHEN round(AVG(e.salary),2) >= 2000 AND round(AVG(e.salary),2) <= 5800 THEN 'Júnior'
WHEN round(AVG(e.salary),2) >= 5801 AND round(AVG(e.salary),2) <= 7500 THEN 'Pleno'
WHEN round(AVG(e.salary),2) >= 7501 AND round(AVG(e.salary),2) <= 10500 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade' 
FROM jobs AS j
INNER JOIN employees AS e
ON j.job_id = e.job_id
GROUP BY j.job_title
ORDER BY round(AVG(e.salary),2) ASC, j.job_title ASC;
