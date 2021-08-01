/* 5 - Exiba os cargos com sua variação salarial e suas médias máxima e mínima mensal, considerando salários máximo e minímo como anuais 

Como os salários máximo e mínimo foram considerados como anuais, suas médias serão obtidas dividindo-os por 12 meses.
*/

SELECT
  j.JOB_TITLE `Cargo`,
  (j.MAX_SALARY - j.MIN_SALARY) `Variação Salarial`,
  ROUND(j.MIN_SALARY/12, 2) `Média mínima mensal`,
  ROUND(j.MAX_SALARY/12, 2) `Média máxima mensal`
FROM
  hr.jobs j
ORDER BY
  `Variação Salarial`,
  `Cargo`;
