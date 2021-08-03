USE hr;
DELIMITER $$;

CREATE PROCEDURE buscar_media_por_cargo(IN nomecargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(e.salary), 2) as 'Média Salarial' FROM hr.employees as e INNER JOIN hr.jobs as j ON j.job_id = e.job_id WHERE job_title = nomecargo GROUP BY job_title;
END $$;

DELIMITER ;

CALL buscar_media_por_cargo('Programmer')

