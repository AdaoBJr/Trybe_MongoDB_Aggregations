SELECT j.JOB_TITLE AS 'Cargo', 
CASE
WHEN e.salary > 30000 THEN 'Altíssimo'
WHEN e.salary BETWEEN 20001 AND 30000 THEN 'Alto'
WHEN e.salary BETWEEN 10001 AND 20000 THEN 'Médio'
ELSE 'Baixo'
END AS 'Nível'
FROM hr.jobs AS j
INNER JOIN hr.employees AS e
ON j.JOB_ID = e.JOB_ID
GROUP BY Cargo
ORDER BY Cargo;
