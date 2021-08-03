SELECT CONCAT(e.first_name," ", e.last_name ) as "Nome completo funcionário 1",
e.salary as "Salário funcionário 1",
e.phone_number as "Telefone funcionário 1",
CONCAT(c.first_name, " ", c.last_name) as  "Nome completo funcionário 2",
c.salary as "Salário funcionário 2",
c.phone_number as "Telefone funcionário 2"
FROM `hr`.`employees` as e, `hr`.`employees` as c
WHERE e.JOB_ID = c.JOB_ID 
AND e.EMPLOYEE_ID <> c.EMPLOYEE_ID
order by `Nome completo funcionário 1`, `Nome completo funcionário 2`;
