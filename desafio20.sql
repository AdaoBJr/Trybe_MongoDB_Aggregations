USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
select
CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) as `Nome completo`,
dep.DEPARTMENT_NAME as `Departamento`,
j.JOB_TITLE as `Cargo`
from hr.employees as emp
INNER JOIN hr.job_history as jh ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.departments as dep ON dep.DEPARTMENT_ID = jh.DEPARTMENT_ID AND emp.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.jobs as j ON j.JOB_ID = jh.JOB_ID
WHERE emp.EMAIL = email
ORDER BY `Departamento`, `Cargo`
;
END $$
DELIMITER ;
