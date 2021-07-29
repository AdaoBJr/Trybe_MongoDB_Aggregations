SELECT CONCAT(F1.FIRST_NAME, ' ', F1.LAST_NAME) AS `Nome completo funcionário 1`,
F1.SALARY AS `Salário funcionário 1`,
F1.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(F2.FIRST_NAME, ' ', F2.LAST_NAME) AS `Nome completo funcionário 2`,
F2.SALARY AS `Salário funcionário 2`,
F2.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees F1, hr.employees F2
WHERE F1.EMPLOYEE_ID <> F2.EMPLOYEE_ID AND F1.JOB_ID = F2.JOB_ID
ORDER BY CONCAT(F1.FIRST_NAME, ' ', F1.LAST_NAME), CONCAT(F2.FIRST_NAME, ' ', F2.LAST_NAME);
