SELECT UCASE(CONCAT(EMP.FIRST_NAME, ' ', EMP.LAST_NAME)) AS "Nome completo",
DATE(JOB_H.START_DATE) AS "Data de início",
EMP.SALARY AS "Salário"
FROM employees AS EMP
INNER JOIN hr.job_history AS JOB_H
ON JOB_H.EMPLOYEE_ID = EMP.EMPLOYEE_ID
ORDER BY "Nome completo" ASC, "Data de início" ASC;
