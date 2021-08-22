USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo varchar(25))
BEGIN
	SELECT ROUND(AVG(emplo.salary), 2) FROM employees AS emplo
	INNER JOIN jobs ON emplo.JOB_ID = jobs.JOB_ID
	WHERE jobs.JOB_TITLE = cargo;
END $$
DELIMITER;

