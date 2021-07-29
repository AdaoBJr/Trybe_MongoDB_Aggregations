USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job_title VARCHAR(100))

BEGIN
SELECT
    ROUND(AVG(table_employees.SALARY), 2) AS `Média salarial`
FROM
    hr.employees AS table_employees
INNER JOIN
    hr.jobs AS table_jobs ON table_employees.job_id = table_jobs.job_id AND table_jobs.job_title = job_title;
END $$

DELIMITER ;