DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(
  IN nome_do_cargo VARCHAR(100) 
)

BEGIN
SELECT 
    ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
FROM
    hr.jobs j
        INNER JOIN
    hr.employees e ON j.JOB_ID = e.JOB_ID
GROUP BY JOB_TITLE
HAVING j.JOB_TITLE = nome_do_cargo
ORDER BY ROUND(AVG(e.SALARY), 2) , JOB_TITLE;
END $$
DELIMITER ;
