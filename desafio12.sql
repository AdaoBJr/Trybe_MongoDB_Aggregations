SELECT 
CONCAT(E.FIRST_NAME, " ", E.LAST_NAME) as `Nome completo funcionário 1`,
E.SALARY as `Salário funcionário 1`,
E.PHONE_NUMBER as `Telefone funcionário 1`,
CONCAT(D.FIRST_NAME, " ", D.LAST_NAME) as `Nome completo funcionário 2`,
D.SALARY as `Salário funcionário 2`,
D.PHONE_NUMBER as `Telefone funcionário 2`
FROM hr.employees AS E, hr.employees AS D
WHERE E.EMPLOYEE_ID <> D.EMPLOYEE_ID AND E.JOB_ID = D.JOB_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`; 
