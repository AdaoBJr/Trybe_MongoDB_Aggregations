DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT CONCAT(E.first_name, ' ', E.last_name) AS 'Nome completo',
Department_Name AS 'Departamento',
Job_title AS 'Cargo'
FROM hr.employees AS E
INNER JOIN hr.job_history AS JH
ON JH.Employee_ID = E.Employee_ID
INNER JOIN hr.departments AS D
ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
INNER JOIN hr.jobs AS J
ON J.JOB_ID = JH.JOB_ID
WHERE E.Email = email
ORDER BY Department_Name, Job_title;
END $$
DELIMITER ;
