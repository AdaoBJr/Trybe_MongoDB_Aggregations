USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(50))
BEGIN
SELECT ROUND(AVG(e.SALARY), 2) as 'Média salarial'
FROM hr.employees as e
INNER JOIN hr.jobs as j ON j.JOB_ID = e.JOB_ID
WHERE job = j.JOB_TITLE;
END $$
DELIMITER ;
