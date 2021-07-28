SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    j.JOB_TITLE AS 'Cargo',
    e.HIRE_DATE AS 'Data de início do cargo',
    departments.DEPARTMENT_NAME AS 'Departamento'
FROM
    employees e
        INNER JOIN
    jobs j ON j.JOB_ID = e.JOB_ID
        INNER JOIN
    departments ON departments.DEPARTMENT_ID = e.DEPARTMENT_ID
ORDER BY Nome completo DESC , Cargo ASC;
