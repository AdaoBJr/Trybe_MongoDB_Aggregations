USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job_name VARCHAR(45))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS `Média salarial`
FROM hr.employees E
INNER JOIN hr.jobs J
ON J.JOB_ID = E.JOB_ID
WHERE JOB_TITLE = job_name;
END $$
DELIMITER ;
CALL buscar_media_por_cargo('Programmer');
