SELECT
    CONCAT(emploA.FIRST_NAME, ' ', emploA.LAST_NAME) AS 'Nome completo funcionário 1',
    emploA.SALARY AS "Salário funcionário 1",
    emploA.PHONE_NUMBER AS "Telefone funcionário 1",
    CONCAT(emploB.FIRST_NAME, ' ', emploB.LAST_NAME) AS 'Nome completo funcionário 2',
    emploB.SALARY AS "Salário funcionário 2",
    emploB.PHONE_NUMBER AS "Telefone funcionário 2"
FROM employees AS emploA, employees AS emploB
WHERE emploA.EMPLOYEE_ID != emploB.EMPLOYEE_ID AND emploA.JOB_ID = emploB.JOB_ID
ORDER BY emploA.FIRST_NAME, emploB.FIRST_NAME;
