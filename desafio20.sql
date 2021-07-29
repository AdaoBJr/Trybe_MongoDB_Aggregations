USE hr;
DELIMITER $$ CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50)) 
BEGIN
  SELECT
    CONCAT(table_email.first_name, ' ', table_email.last_name) 'Nome completo',
    table_departments.department_name 'Departamento',
    j.job_title 'Cargo' 
  FROM
    hr.employees table_email 
    INNER JOIN
      hr.job_history table_history 
      ON table_email.employee_id = table_history.employee_id 
    INNER JOIN
      hr.departments table_departments 
      ON table_history.department_id = table_departments.department_id 
    INNER JOIN
      hr.jobs j 
      ON table_history.job_id = j.job_id 
  WHERE
    table_email.email = email 
  ORDER BY
    table_departments.department_name,
    j.job_title;
END
$$ DELIMITER ;
