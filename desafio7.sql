SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo', 
jhist.START_DATE as 'Data de início',
e.SALARY as 'Salário'
FROM hr.employees as e
INNER JOIN hr.job_history as jhist ON e.JOB_ID = jhist.JOB_ID
ORDER BY  `Nome completo` ASC, `Data de início` ASC;