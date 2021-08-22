DELIMITER $$ 
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(20)) BEGIN
SELECT
CONCAT(e.FIRST_NAME, " ", e.LAST_NAME) "Nome completo",
d.DEPARTMENT_NAME "Departamento",
j.JOB_TITLE "Cargo"
FROM hr.job_history h
INNER JOIN employees e ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN departments d ON h.DEPARTMENT_ID = d.DEPARTMENT_ID
INNER JOIN jobs j ON h.JOB_ID = j.JOB_ID
WHERE e.EMAIL = email
ORDER BY `Departamento`, `Cargo`;
END $$ 
DELIMITER ;
