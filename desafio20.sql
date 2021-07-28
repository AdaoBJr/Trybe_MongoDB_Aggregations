USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(
IN in_email VARCHAR(20))
BEGIN
SELECT 
CONCAT(t2.FIRST_NAME, ' ', t2.LAST_NAME) 'Nome completo',
D.DEPARTMENT_NAME 'Departamento',
t3.JOB_TITLE 'Cargo'
FROM job_history AS t1
JOIN employees AS t2 ON t2.EMPLOYEE_ID = t1.EMPLOYEE_ID
JOIN departments D ON D.DEPARTMENT_ID = t1.DEPARTMENT_ID
JOIN jobs AS t3 ON t3.JOB_ID = t1.JOB_ID
WHERE 
t2.EMAIL = in_email
ORDER BY `Departamento`, `Cargo`;
END $$
DELIMITER ;
