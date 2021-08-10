USE hr 
DELIMITER $$ 
CREATE PROCEDURE buscar_media_por_cargo(IN job_title VARCHAR(30)) 
BEGIN
SELECT
ROUND(AVG(employees.SALARY),2) AS `Média salarial`
FROM hr.employees AS employees
INNER JOIN hr.jobs AS jb ON employees.JOB_ID = jb.JOB_ID
AND jb.JOB_TITLE = job_title
END $$ 
DELIMITER 
CALL buscar_media_por_cargo('Programmer');
