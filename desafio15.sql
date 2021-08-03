DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(20))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial'
FROM hr.employees AS em
INNER JOIN jobs AS jo ON jo.JOB_ID = em.JOB_ID
WHERE JOB_TITLE=job;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
