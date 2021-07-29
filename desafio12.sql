SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo funcionário 1',
    e.SALARY AS 'Salário funcionário 1',
    e.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(ep.FIRST_NAME, ' ', ep.LAST_NAME) AS 'Nome completo funcionário 2',
    ep.SALARY AS 'Salário funcionário 2',
    ep.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    hr.employees AS e
        INNER JOIN
    hr.employees AS ep ON e.JOB_ID = ep.JOB_ID
WHERE
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) <> CONCAT(ep.FIRST_NAME, ' ', ep.LAST_NAME)
ORDER BY `Nome completo funcionário 1` , `Nome completo funcionário 2`;
