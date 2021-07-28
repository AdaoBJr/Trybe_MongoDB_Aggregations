USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo_name VARCHAR(20))
BEGIN
SELECT ROUND(AVG(e.SALARY), 2) 'Média de salários por cargo'
FROM hr.jobs j
INNER JOIN hr.employees e ON e.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE = cargo_name;
END $$
DELIMITER ;
