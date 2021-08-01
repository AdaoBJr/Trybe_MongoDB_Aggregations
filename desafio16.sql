use hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN DECLARE jobsCount INT;
SELECT
COUNT(employees.EMPLOYEE_ID) AS total_jobs
FROM
hr.job_history AS jHistory
JOIN
hr.employees AS employees
ON
jHistory.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE
employees.EMAIL = email
INTO jobsCount;
RETURN jobsCount;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
