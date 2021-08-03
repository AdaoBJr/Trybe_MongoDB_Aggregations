SELECT UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo',
jobh.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM hr.job_history AS jobh INNER JOIN employees AS e
ON e.EMPLOYEE_ID = jobh.EMPLOYEE_ID
WHERE MONTH(jobh.START_DATE) BETWEEN 1 AND 3
ORDER BY 1, 2;
