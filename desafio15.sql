DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT
ROUND(AVG(SALARY),2) AS `Média salarial`
FROM
hr.jobs AS j
INNER JOIN
hr.employees AS e
ON
j.JOB_ID = e.JOB_ID
WHERE
JOB_TITLE = cargo
GROUP BY
JOB_TITLE;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');

DROP PROCEDURE buscar_media_por_cargo;
