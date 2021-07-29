SELECT 
    CONCAT(table_employees.first_name,
            ' ',
            table_employees.last_name) 'Nome completo funcionário 1',
    table_employees.salary 'Salário funcionário 1',
    table_employees.phone_number 'Telefone funcionário 1',
    CONCAT(table_employees_aux.first_name,
            ' ',
            table_employees_aux.last_name) 'Nome completo funcionário 2',
    table_employees_aux.salary 'Salário funcionário 2',
    table_employees_aux.phone_number 'Telefone funcionário 2'
FROM
    hr.employees table_employees,
    hr.employees table_employees_aux
WHERE
    table_employees.job_id = table_employees_aux.job_id
        AND table_employees.employee_id <> table_employees_aux.employee_id
ORDER BY CONCAT(table_employees.first_name,
        ' ',
        table_employees.last_name) , CONCAT(table_employees_aux.first_name,
        ' ',
        table_employees_aux.last_name);
