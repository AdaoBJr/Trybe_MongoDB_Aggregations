DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN mediaJob VARCHAR(50))
BEGIN
  SELECT 
    ROUND(AVG(e.salary), 2) as 'Média salarial'
FROM
    hr.jobs AS j
        INNER JOIN
    hr.employees AS e ON e.job_id = j.job_id
WHERE
    j.job_title = mediaJob;
END $$

DELIMITER ;
CALL buscar_media_por_cargo('Programmer');
