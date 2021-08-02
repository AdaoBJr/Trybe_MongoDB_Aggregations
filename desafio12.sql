SELECT 
    CONCAT(first_employee.FIRST_NAME,
            ' ',
            first_employee.LAST_NAME) AS 'Nome completo funcionário 1',
    first_employee.SALARY AS 'Salário funcionário 1',
    first_employee.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(second_employee.FIRST_NAME,
            ' ',
            second_employee.LAST_NAME) AS 'Nome completo funcionário 2',
    second_employee.SALARY AS 'Salário funcionário 2',
    second_employee.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    hr.employees AS first_employee,
    hr.employees AS second_employee
WHERE
    CONCAT(first_employee.FIRST_NAME,
            ' ',
            first_employee.LAST_NAME) <> CONCAT(second_employee.FIRST_NAME,
            ' ',
            second_employee.LAST_NAME)
        AND first_employee.JOB_ID = second_employee.JOB_ID
ORDER BY `Nome completo funcionário 1` ASC, `Nome completo funcionário 2` ASC;
