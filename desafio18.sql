-- Iniciando o projeto
# histórico de cargos dos funcionários, data de início e de saída, anos em que ficou no cargo

SELECT CONCAT(employe.FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
DATE_FORMAT(job_h.START_DATE, '%d/%m/%y') AS 'Data de início',
DATE_FORMAT(job_h.END_DATE, '%d/%m/%y') AS 'Data de rescisão',
ROUND(DATEDIFF(job_h.END_DATE, job_h.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history AS job_h
INNER JOIN hr.employees AS employe ON job_h.EMPLOYEE_ID = employe.EMPLOYEE_ID
ORDER BY 1 ASC, 4 ASC;
