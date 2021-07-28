USE hr;

DELIMITER $$
	CREATE PROCEDURE exibir_historico_completo_por_funcionario(
    IN in_email VARCHAR(20))
BEGIN
	SELECT 
    CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) 'Nome completo',
	D.DEPARTMENT_NAME 'Departamento',
    J.JOB_TITLE 'Cargo'
	FROM job_history JH
		JOIN employees E ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
		JOIN departments D ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
		JOIN jobs J ON J.JOB_ID = JH.JOB_ID
	WHERE 
		E.EMAIL = in_email
	ORDER BY `Departamento`, `Cargo`;
END $$
DELIMITER ;
