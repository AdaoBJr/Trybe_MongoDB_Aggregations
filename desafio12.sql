SELECT 
    concat(e1.FIRST_NAME, ' ', e1.LAST_NAME) AS 'Nome completo funcionário 1',
    e1.SALARY AS 'Salário funcionário 1',
    e1.PHONE_NUMBER AS 'Telefone funcionário 1',
    concat(e2.FIRST_NAME, ' ', e2.LAST_NAME) AS 'Nome completo funcionário 2',
    e2.SALARY AS 'Salário funcionário 2',
    e2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    employees e1,
    employees e2
WHERE e1.JOB_ID = e2.JOB_ID AND e1.FIRST_NAME != e2.FIRST_NAME
ORDER BY e1.FIRST_NAME, e2.FIRST_NAME
LIMIT 100000;
