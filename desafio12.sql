SELECT 
    CONCAT(employess1.first_name,' ', employess1.last_name) AS `Nome completo funcionário 1`,
    employess1.salary AS `Salário funcionário 1`,
    employess1.phone_number AS `Telefone funcionário 1`,
    CONCAT(employess2.first_name, ' ', employess2.last_name) AS `Nome completo funcionário 2`,
    employess2.salary AS `Salário funcionário 2`,
    employess2.phone_number AS `Telefone funcionário 2`
FROM 
    hr.employees AS employess1,
    hr.employees AS employess2
WHERE employess1.employee_id != employess2.employee_id
        AND employess1.job_id = employess2.job_id
ORDER BY  `Nome completo funcionário 1`, `Nome completo funcionário 2`;
