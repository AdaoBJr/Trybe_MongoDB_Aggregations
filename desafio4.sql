/* 4 - Exiba a média salarial e o nível de senioridade de todas as pessoas empregadas, agrupadas pelo cargo */
/*
  Material consultado sobre ordem das operações SQL
  https://www.sisense.com/blog/sql-query-order-of-operations/
  https://learnsql.com/blog/sql-order-of-operations/
*/
/* SOLUCAO 2 */
SELECT
  j.JOB_TITLE 'Cargo',
  emp.`Média salarial`,
  CASE
    WHEN `Média salarial` BETWEEN 2000 AND 5800 THEN 'Júnior'
    WHEN `Média salarial` <= 7500 THEN 'Pleno'
    WHEN `Média salarial` <= 10500 THEN 'Sênior'
    WHEN `Média salarial` > 10500 THEN 'CEO'
  END AS 'Senioridade'
FROM
  (SELECT
    e.JOB_ID,
    ROUND(AVG(e.SALARY), 2) `Média salarial`
  FROM
    hr.employees e
  GROUP BY e.JOB_ID) emp
    INNER JOIN
  hr.jobs j
ON emp.JOB_ID = j.JOB_ID
ORDER BY
  `Média salarial`,
  j.JOB_TITLE;
