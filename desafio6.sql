-- Iniciando o projeto
# relatório que mostra o histórico de cargos das pessoas empregadas

SELECT CONCAT(employe.FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
job.JOB_TITLE AS 'Cargo',
job_h.START_DATE AS 'Data de início do cargo',
departament.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS job_h
INNER JOIN hr.employees AS employe ON job_h.EMPLOYEE_ID = employe.EMPLOYEE_ID
INNER JOIN hr.jobs AS job ON job_h.JOB_ID = job.JOB_ID
INNER JOIN hr.departments AS departament ON job_h.DEPARTMENT_ID = departament.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;
