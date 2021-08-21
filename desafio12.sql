SELECT
CONCAT(a.FIRST_NAME, " ", a.LAST_NAME) "Nome completo funcionário 1",
a.SALARY "Salário funcionário 1",
a.PHONE_NUMBER "Telefone funcionário 1",
CONCAT(b.FIRST_NAME, " ", b.LAST_NAME) "Nome completo funcionário 2",
b.SALARY "Salário funcionário 2",
a.PHONE_NUMBER "Telefone funcionário 1"
FROM employees a, employees b
WHERE a.JOB_ID = b.JOB_ID AND a.EMPLOYEE_ID <> b.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
