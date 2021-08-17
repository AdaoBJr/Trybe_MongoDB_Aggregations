USE hr
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT 
ROUND(SUM(SALARY) / COUNT(*), 2) AS 'Média salarial'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE = cargo;
END $$

DELIMITER $$

CALL buscar_media_por_cargo('Programmer');
