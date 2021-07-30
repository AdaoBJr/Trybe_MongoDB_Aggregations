-- Iniciando o projeto
# Dado o e-mail de uma pessoa funcionária, retorna todos os cargos em seu histórico

USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(30))
BEGIN
SELECT CONCAT(employe.FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
department.DEPARTMENT_NAME AS 'Departamento',
job.JOB_TITLE AS 'Cargo'
FROM hr.job_history AS job_h
INNER JOIN hr.employees AS employe ON job_h.EMPLOYEE_ID = employe.EMPLOYEE_ID
INNER JOIN hr.departments AS department ON job_h.DEPARTMENT_ID = department.DEPARTMENT_ID
INNER JOIN hr.jobs AS job ON job_h.JOB_ID = job.JOB_ID WHERE employe.EMAIL = email
ORDER BY department.DEPARTMENT_NAME, job.JOB_TITLE;
END $$
DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
