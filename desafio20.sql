DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(25))
BEGIN
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
d.DEPARTMENT_NAME AS Departamento,
j.JOB_TITLE AS Cargo
FROM employees AS e
INNER JOIN job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN jobs AS j
ON jh.JOB_ID = j.JOB_ID
INNER JOIN departments AS d
ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
WHERE e.EMAIL = email
ORDER BY Departamento, Cargo;
END $$
DELIMITER ;
