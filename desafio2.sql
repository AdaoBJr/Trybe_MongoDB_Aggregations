SELECT JOB_TITLE AS Cargo,
	CASE
		WHEN MAX_SALARY BETWEEN 5000 AND 1000 THEN 'Baixo'
        WHEN MAX_SALARY BETWEEN 1001 AND 20000 THEN 'Médio'
        WHEN MAX_SALARY BETWEEN 2001 AND 30000 THEN 'Alto'
        ELSE 'Altíssimo'
	END AS Nível
FROM hr.jobs
ORDER BY JOB_TITLE;
