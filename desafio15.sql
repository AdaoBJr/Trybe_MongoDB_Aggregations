USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN name_job VARCHAR(60))
BEGIN
SELECT 
ROUND(AVG(t1.SALARY),2) 'Média salarial'
FROM employees AS t1
JOIN jobs AS t2 ON t2.JOB_ID = t1.JOB_ID
WHERE 
t2.JOB_TITLE = name_job;
END $$
DELIMITER ;
