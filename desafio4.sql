select j.JOB_TITLE as 'Cargo', ROUND(AVG(e.SALARY),2) as 'Média salarial',
CASE
WHEN ROUND(AVG(e.SALARY),2) BETWEEN 2000 and 5800 THEN 'Júnior'
WHEN ROUND(AVG(e.SALARY),2) BETWEEN 5801 and 7500 THEN 'Pleno'
WHEN ROUND(AVG(e.SALARY),2) BETWEEN 7501 and 10500 THEN 'Sênior'
WHEN ROUND(AVG(e.SALARY),2) > 10500 THEN 'CEO'
END as 'Senioridade'
FROM hr.jobs as j
INNER JOIN hr.employees as e
ON j.JOB_ID = e.JOB_ID
GROUP BY j.JOB_ID
ORDER BY `Média salarial`,`Cargo` ASC;
