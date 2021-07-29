DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo varchar(50))
BEGIN
SELECT 
    round(avg(SALARY), 2) as 'Média salarial'
FROM
    employees e
INNER JOIN jobs j 
ON e.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE = cargo;
END $$

DELIMITER ;
