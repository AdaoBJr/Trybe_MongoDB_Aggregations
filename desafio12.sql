SELECT CONCAT(E.FIRST_NAME
, " "
, E.LAST_NAME) AS `Nome completo funcionário 1`
, 
E.SALARY AS `Salário funcionário 1`
, 
E.PHONE_NUMBER AS `Telefone funcionário 1`
, 
CONCAT(D.FIRST_NAME
, " "
, D.LAST_NAME) AS `Nome completo funcionário 2`
, 
D.SALARY AS `Salário funcionário 2`
, 
D.PHONE_NUMBER AS `Telefone funcionário 2` 
FROM hr.employees AS E
, 
hr.employees AS D 
WHERE E.EMPLOYEE_ID <> D.EMPLOYEE_ID 
AND E.JOB_ID = D.JOB_ID 
ORDER BY `Nome completo funcionário 1`
, 
`Nome completo funcionário 2`; 
