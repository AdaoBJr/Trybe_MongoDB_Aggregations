SELECT UCASE(CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME)) 'Nome completo',
START_DATE 'Data de início do cargo',
SALARY 'Salário'
FROM hr.job_history jh
INNER JOIN hr.employees em
ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
ORDER BY UCASE(CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME)),
START_DATE;
