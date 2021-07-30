SELECT * FROM hr.jobs;
SELECT * FROM hr.job_history;
SELECT * FROM hr.departments;	
SELECT * FROM hr.employees;

SELECT J.JOB_TITLE AS 'Cargo', ROUND(AVG(EM.SALARY), 2) AS 'Média salarial',
CASE
	WHEN AVG(EM.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
    WHEN AVG(EM.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
    WHEN AVG(EM.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
    WHEN AVG(EM.SALARY) > 10500 THEN 'CEO'
    ELSE 'Sem classificação'
END AS 'Senioridade'
FROM hr.jobs AS J
INNER JOIN employees AS EM
ON J.JOB_ID = EM.JOB_ID
GROUP BY J.JOB_TITLE
ORDER BY `Média salarial`, `Cargo`;