USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo_name VARCHAR(300))
BEGIN
SELECT ROUND(AVG(e.SALARY), 2) 'Média de salários por cargo'
FROM hr.employees e
INNER JOIN jobs j ON e.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE = cargo_name;
END $$
DELIMITER ;
