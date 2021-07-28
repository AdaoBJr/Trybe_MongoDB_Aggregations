SELECT
JOB_TITLE AS Cargo,
MAX_SALARY - MIN_SALARY AS  "Variação Salarial",
(MAX_SALARY - MIN_SALARY)/12 AS "Média mínima mensal",
MAX_SALARY/12 AS "Média máxima mensal"
FROM jobs
ORDER BY MAX_SALARY - MIN_SALARY, JOB_TITLE ;
