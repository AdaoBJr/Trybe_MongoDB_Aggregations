DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(INOUT cargo varchar(50))
BEGIN
SELECT 
    round(avg(SALARY), 2)
FROM
    employees e
INNER JOIN jobs j 
ON e.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE = cargo
INTO cargo;
END $$

DELIMITER ;
