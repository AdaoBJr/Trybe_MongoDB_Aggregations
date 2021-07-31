DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN nome_cargo VARCHAR(35))
BEGIN
SELECT ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
FROM
employees AS e INNER JOIN jobs AS j ON e.JOB_ID = j.JOB_ID
WHERE
j.JOB_TITLE = nome_cargo;
END $$
DELIMITER ;
