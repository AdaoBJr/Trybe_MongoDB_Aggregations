SELECT
  CONCAT(FIRST_NAME, ' ', LAST_NAME) 'Nome completo',
  j.JOB_TITLE 'Cargo',
  jh.START_DATE 'Data de início do cargo',
  d.DEPARTMENT_NAME 'Departamento'
FROM hr.employees e
INNER JOIN hr.jobs j
  ON e.JOB_ID = j.JOB_ID
INNER JOIN hr.job_history jh
  ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.departments d
  ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME) DESC, j.JOB_TITLE;
