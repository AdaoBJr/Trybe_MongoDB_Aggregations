USE hr;
DELIMITER $$ 
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100)) 
BEGIN
SELECT
  CONCAT(t1.FIRST_NAME, ' ',t1.LAST_NAME) AS 'Nome completo',
  t2.DEPARTMENT_ID AS Departamento,
  t3.JOB_TITLE AS Cargo
FROM
  hr.employees AS t1
  INNER JOIN hr.job_history AS t2
  ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
  INNER JOIN hr.jobs AS t3
  ON t2.JOB_TITLE = t3.JOB_TITLE;
END $$ 

DELIMITER ;
CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
