USE hr;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(cargo VARCHAR(100))
BEGIN
SELECT 
ROUND(AVG(E.SALARY), 2) AS 'Média salarial'
FROM hr.employees E
INNER JOIN hr.jobs J ON E.JOB_ID = J.JOB_ID
WHERE JOB_TITLE = cargo;
END $$

DELIMITER ;
