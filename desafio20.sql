DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN parameter_email varchar(50))
BEGIN

SELECT 
    concat(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
    (select DEPARTMENT_NAME from departments d where d.DEPARTMENT_ID = jh.DEPARTMENT_ID ) as 'Departamento',
    (select JOB_TITLE from jobs j where j.JOB_ID = jh.JOB_ID ) as 'Cargo'
FROM
    job_history jh
inner join employees e
on jh.EMPLOYEE_ID = e.EMPLOYEE_ID
where EMAIL = parameter_email
ORDER BY `Departamento`, `Cargo`;

END $$

DELIMITER ;
