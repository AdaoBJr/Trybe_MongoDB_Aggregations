SELECT
  j.JOB_TITLE AS 'Cargo',
  (j.MAX_SALARY - j.MIN_SALARY) AS 'Variação Salarial',
  ROUND((AVG(j.MIN_SALARY) / 12), 2) AS 'Média mínima mensal',
  ROUND((AVG(j.MAX_SALARY) / 12), 2) AS 'Média máxima mensal'
FROM hr.jobs AS j
INNER JOIN hr.employees AS e
  ON j.JOB_ID = e.JOB_ID
GROUP BY e.JOB_ID
ORDER BY (j.MAX_SALARY - j.MIN_SALARY) ASC, j.JOB_TITLE ASC;
