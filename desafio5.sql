/* 5 - Exiba os cargos com sua variação salarial e suas médias máxima e mínima mensal, considerando salários máximo e minímo como anuais */

SELECT
  j.JOB_TITLE `Cargo`,
  (MAX(e.SALARY) - MIN(e.SALARY)) `Variação Salarial`,
  ROUND(MIN(e.SALARY), 2) `Média mínima mensal`,
  ROUND(MAX(e.SALARY), 2) `Média máxima mensal`
FROM
  hr.employees e
    INNER JOIN
  hr.jobs j
ON e.JOB_ID = j.JOB_ID
GROUP BY j.JOB_ID
ORDER BY
  `Variação Salarial`,
  `Cargo`;
