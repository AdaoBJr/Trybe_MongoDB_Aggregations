DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT round(avg(e.SALARY), 2) AS 'Média salarial' FROM hr.employees e INNER JOIN hr.jobs j ON e.JOB_ID = j.JOB_ID WHERE j.JOB_TITLE = cargo GROUP BY e.JOB_ID;
END $$
DELIMITER ;
