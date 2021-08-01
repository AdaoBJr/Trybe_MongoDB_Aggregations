SELECT CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) "Nome completo",
jb.JOB_TITLE "Cargo",
START_DATE "Data de início do cargo",
dp.DEPARTMENT_ID "Departamento"
FROM job_history jh
INNER JOIN hr.employees em
ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
INNER JOIN hr.jobs jb
ON jh.JOB_ID = jb.JOB_ID
INNER JOIN hr.departments dp
ON jh.DEPARTMENT_ID = dp.DEPARTMENT_ID
ORDER BY CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) DESC,
jb.JOB_TITLE ASC;
