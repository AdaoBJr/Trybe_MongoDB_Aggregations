
DELIMITER $$ 
CREATE PROCEDURE buscar_media_por_cargo(IN job varchar(25))
BEGIN 
SELECT ROUND(AVG(e.salary),2) AS 'Média salarial' FROM employees AS e
INNER JOIN jobs AS j
ON j.job_id = e.job_id
WHERE job_title = job;
END $$ 
DELIMITER ;
-- CALL buscar_media_por_cargo('Programmer');
