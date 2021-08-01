
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo_pesquisado VARCHAR(40))
BEGIN
SELECT ROUND(SUM(SALARY) / COUNT(SALARY), 2) AS "Média salarial", j.JOB_ID, j.JOB_TITLE
FROM hr.employees AS e INNER JOIN hr.jobs AS j ON j.JOB_ID = e.JOB_ID
GROUP BY e.JOB_ID HAVING JOB_TITLE IN (cargo_pesquisado);
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
