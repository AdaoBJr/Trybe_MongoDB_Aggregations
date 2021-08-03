DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email_input VARCHAR(100))
BEGIN
SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) 'Nome completo', 
D.DEPARTMENT_NAME 'Departamento',
J.JOB_TITLE 'Cargo'
FROM hr.employees E
INNER JOIN hr.departments D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
INNER JOIN hr.job_history JH
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
INNER JOIN hr.jobs J
ON JH.JOB_ID = J.JOB_ID
WHERE E.EMAIL = email_input
ORDER BY `Departamento`, `Cargo`;
END $$
DELIMITER ;
