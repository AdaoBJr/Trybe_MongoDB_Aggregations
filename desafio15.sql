USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo_name VARCHAR(30))
BEGIN
SELECT ROUND(SUM(SALARY) / COUNT(*), 2) AS 'Média salarial'
FROM hr.employees AS employe
INNER JOIN hr.jobs AS job ON employe.JOB_ID = job.JOB_ID
WHERE job.JOB_TITLE = cargo_name;
END $$
DELIMITER ;
CALL buscar_media_por_cargo('Programmer');
