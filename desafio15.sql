DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(E.SALARY),2) 'Média salarial'
FROM hr.employees E
INNER JOIN hr.jobs J
ON J.JOB_ID = E.JOB_ID
WHERE cargo = J.JOB_TITLE;
END $$
DELIMITER ;
