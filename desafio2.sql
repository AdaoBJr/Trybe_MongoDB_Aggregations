/* 2 - Exiba os cargos com seu nível de renumeração associado, com base no salário máximo do cargo */
SELECT
  j.JOB_TITLE `Cargo`,
  CASE
    WHEN j.MAX_SALARY BETWEEN 5000 AND 10000 THEN 'Baixo'
    WHEN j.MAX_SALARY <= 20000 THEN 'Médio'
    WHEN j.MAX_SALARY <= 30000 THEN 'Alto'
    WHEN j.MAX_SALARY > 30000 THEN 'Altíssimo'
  END AS `Nível`
FROM hr.jobs j
ORDER BY j.JOB_TITLE ASC;
