DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(e.salary), 2) AS 'Média salarial'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j ON j.job_id = e.job_id
WHERE j.job_title = cargo
GROUP BY j.job_title;
END $$
DELIMITER ;
