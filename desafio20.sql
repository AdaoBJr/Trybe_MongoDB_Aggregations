DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT
CONCAT(FIRST_NAME,' ',LAST_NAME) AS `Nome completo`,
DEPARTMENT_NAME AS 'Departamento',
JOB_TITLE AS 'Cargo'
FROM
hr.job_history AS jh
INNER JOIN
hr.employees AS e
ON
jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN
hr.departments AS d
ON
jh.DEPARTMENT_ID = d.DEPARTMENT_ID
INNER JOIN
hr.jobs AS j
ON
jh.JOB_ID = j.JOB_ID
WHERE
e.EMAIL = email
ORDER BY
Departamento,
Cargo;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');

DROP PROCEDURE exibir_historico_completo_por_funcionario;
