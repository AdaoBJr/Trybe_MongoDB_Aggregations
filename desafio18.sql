-- Iniciando o projeto
# histórico de cargos dos funcionários, data de início e de saída, anos em que ficou no cargo

SELECT CONCAT(employe.FIRST_NAME, ' ', employe.LAST_NAME) as 'Nome completo',
DATE_FORMAT(job_h.START_DATE, '%d/%m/%y') as 'Data de início',
aROUND(DATEDIFF(job_h.END_DATE, job_h.START_DATE) / 365, 2) as 'Anos trabalhados'
FROM hr.job_history as job_h
INNER JOIN hr.employees as employe ON employe.EMPLOYEE_ID = job_h.EMPLOYEE_ID
ORDER BY 1, 4 ASC;
