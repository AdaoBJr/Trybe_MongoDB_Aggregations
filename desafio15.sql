USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN jobName VARCHAR(30))
BEGIN
	SELECT 
		ROUND(AVG(SALARY)) 
    FROM 
		employees 
    WHERE JOB_ID = (
		SELECT JOB_ID FROM jobs WHERE JOB_TITLE = jobName
    );
END $$

DELIMITER ;
