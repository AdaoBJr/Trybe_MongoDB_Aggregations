USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(25))
BEGIN
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) as 'Nome completo',
d.DEPARTMENT_NAME as Departamento,
j.JOB_TITLE as Cargo
FROM hr.employees as e
INNER JOIN hr.job_history as jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN jobs as j
ON jh.JOB_ID = j.JOB_ID
INNER JOIN departments as d
ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
WHERE e.EMAIL = email
ORDER BY Departamento, Cargo;
END $$
DELIMITER ;
