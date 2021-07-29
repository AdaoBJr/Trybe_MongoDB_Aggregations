-- Iniciando o projeto
# Histórico de cargos das pessoas que iniciaram em janeiro, fevereiro ou março

SELECT UCASE(CONCAT(employe.FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
job_h.START_DATE AS 'Data de início',
employe.SALARY AS 'Salário'
FROM hr.employees AS employe
INNER JOIN hr.job_history AS job_h
ON job_h.EMPLOYEE_ID = employe.EMPLOYEE_ID
WHERE MONTH(job_h.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo` ASC, job_h.START_DATE ASC;
