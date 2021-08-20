DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN selectedJob VARCHAR(100))
BEGIN SELECT 
ROUND(AVG(employee.salary), 2) as 'Média salarial'
FROM
    hr.jobs AS jobs
        INNER JOIN
    hr.employees AS employee ON employee.job_id = jobs.job_id
WHERE
    jobs.job_title = selectedJob;
END $$

DELIMITER ;
CALL buscar_media_por_cargo('Programmer');
