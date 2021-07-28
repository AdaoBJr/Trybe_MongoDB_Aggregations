USE hr;

DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN name_job VARCHAR(60))
BEGIN
    SELECT 
        ROUND(AVG(E.SALARY),2) 'Média salarial'
    FROM employees E
        JOIN jobs J ON J.JOB_ID = E.JOB_ID
    WHERE 
        J.JOB_TITLE = name_job;
END $$
DELIMITER ;
