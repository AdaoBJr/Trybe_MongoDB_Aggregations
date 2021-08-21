DELIMITER $$ 
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(20)) BEGIN
SELECT ROUND(AVG(SALARY), 2) "Média salarial"
FROM jobs j
INNER JOIN employees e ON j.JOB_ID = e.JOB_ID
WHERE j.JOB_TITLE = cargo
GROUP BY j.JOB_ID;
END $$ 
DELIMITER ;
