DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(30))
BEGIN
SELECT CONCAT(emp.FIRST_NAME, " ", emp.LAST_NAME) AS "Nome completo",
dep.DEPARTMENT_NAME AS "Departamento",
jo.JOB_TITLE AS "Cargo"
FROM hr.job_history AS joHi
INNER JOIN jobs AS jo ON joHi.JOB_ID = jo.JOB_ID
INNER JOIN departments AS dep ON joHi.DEPARTMENT_ID = dep.DEPARTMENT_ID
INNER JOIN employees AS emp ON joHi.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE emp.EMAIL=email
ORDER BY `Departamento`, `Cargo`;
END $$
DELIMITER ;

CALL exibir_historico_completo_por_funcionario("NKOCHHAR");

-- DROP PROCEDURE exibir_historico_completo_por_funcionario;
