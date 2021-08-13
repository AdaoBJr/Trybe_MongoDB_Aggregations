SELECT
CONCAT(EMP.FIRST_NAME, ' ', EMP.LAST_NAME) AS "Nome completo funcionário 1",
EMP.SALARY AS "Salário funcionário 1",
EMP.PHONE_NUMBER AS "Telefone funcionário 1",
CONCAT(EMP2.FIRST_NAME, ' ', EMP2.LAST_NAME) AS "Nome completo funcionário 2",
EMP2.SALARY AS "Salário funcionário 2",
EMP2.PHONE_NUMBER AS "Telefone funcionário 2"
FROM
hr.employees AS EMP
INNER JOIN hr.employees AS EMP2
ON EMP.JOB_ID = EMP2.JOB_ID
WHERE CONCAT(EMP.FIRST_NAME, ' ', EMP.LAST_NAME) <> CONCAT(EMP2.FIRST_NAME, ' ', EMP2.LAST_NAME)
ORDER BY 1, 4;
