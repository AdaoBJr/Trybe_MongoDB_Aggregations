SELECT UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo',
jobh.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM hr.job_history AS jobh INNER JOIN employees AS e
ON e.JOB_ID = jobh.JOB_ID
ORDER BY 1, 2;
