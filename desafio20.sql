DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
	SELECT concat(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',  d.DEPARTMENT_NAME AS 'Departamento', j.JOB_TITLE AS 'Cargo'
	FROM hr.employees AS e
    INNER JOIN hr.job_history AS hist
    ON e.EMPLOYEE_ID = hist.EMPLOYEE_ID
	INNER JOIN hr.departments AS d
	ON d.DEPARTMENT_ID = hist.DEPARTMENT_ID
	INNER JOIN hr.jobs AS j
    ON j.JOB_ID = hist.JOB_ID
    WHERE e.EMAIL = email
    ORDER BY d.DEPARTMENT_NAME, j.JOB_TITLE;
END $$
DELIMITER ;
