SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
  j.JOB_TITLE AS 'Cargo',
  jh.START_DATE 'Data de inicio do cargo',
  d.DEPARTMENT_NAME AS 'Departamento'
FROM
  job_history AS jh
  INNER JOIN employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
  INNER JOIN jobs AS j ON j.JOB_ID = jh.JOB_ID
  INNER JOIN departments AS d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY
  'Nome completo' DESC,
  JOB_TITLE;
