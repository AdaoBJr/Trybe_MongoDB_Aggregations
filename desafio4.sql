-- SELECT * FROM jobs;
-- SELECT * FROM employees;


SELECT j.JOB_TITLE AS Cargo, ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
CASE
	WHEN e.SALARY >= 2000 AND e.SALARY <= 5800 THEN 'Júnior'
	WHEN e.SALARY >= 5801 AND e.SALARY <= 7500 THEN 'Pleno'
	WHEN e.SALARY >= 7501 AND e.SALARY <= 10500 THEN 'Sênior'
	ELSE 'CEO'
END AS Senioridade
FROM hr.employees as e
INNER JOIN hr.jobs as j
ON j.JOB_ID = e.JOB_ID
GROUP BY j.JOB_TITLE, e.SALARY;