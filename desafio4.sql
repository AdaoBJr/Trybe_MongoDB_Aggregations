SELECT jobs.JOB_TITLE AS 'Cargo',
ROUND(AVG(employees.SALARY)) AS 'Média salarial',
CASE
WHEN `Média salarial` BETWEEEN 2000 AND 5800 THEN 'Júnior'
WHEN `Média salarial` BETWEEEN 5801 AND 7500 THEN 'Pleno'
WHEN `Média salarial` BETWEEEN 7501 AND 10500 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'
FROM hr.jobs AS jobs
INNER JOIN hr.employees AS employees
ON jobs.JOB_ID = employees.JOB_ID;
ORDER BY `Média salarial` ASC, jobs.JOB_TITLE ASC;
