USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN nomeCargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(e.Salary), 2) AS 'Média salarial'
FROM hr.employees e
INNER JOIN hr.jobs j
ON j.JOB_ID = e.JOB_ID
WHERE j.JOB_TITLE = nomeCargo;
END $$

DELIMITER ;
