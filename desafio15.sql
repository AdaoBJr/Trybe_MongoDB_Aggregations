USE hr;
DELIMITER $$ 
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50)) BEGIN
SELECT
  ROUND(AVG(c.salary), 2) AS 'Média salarial'
FROM
  (
    SELECT
      jobs.job_title,
      employees.salary
    FROM
      hr.employees AS employees
      INNER JOIN hr.jobs AS jobs ON employees.job_id = jobs.job_id
    WHERE
      jobs.job_title = cargo
  ) AS c;
END $$ 
DELIMITER ;
CALL buscar_media_por_cargo('Programmer');
