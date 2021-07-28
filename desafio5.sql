SELECT 
	j.JOB_TITLE 'Cargo',
	j.MAX_SALARY - j.MIN_SALARY 'Variação Salarial',
	ROUND(AVG(j.MIN_SALARY) / 12, 2) AS 'Média mínima mensal',
	ROUND(AVG(j.MAX_SALARY) / 12, 2) AS 'Média máxima mensal'
FROM hr.employees e
	JOIN hr.jobs j ON e.JOB_ID = j.JOB_ID
GROUP BY Cargo
ORDER BY j.MAX_SALARY - j.MIN_SALARY, j.JOB_TITLE;
