SELECT 
    j.JOB_TITLE AS 'Cargo',
    (j.MAX_SALARY - j.MIN_SALARY) AS 'Variação Salarial',
    ROUND((MIN_SALARY/12), 2) AS 'Média mínima mensal',
    ROUND((MAX_SALARY/12), 2) AS 'Média máxima mensal'
FROM
    hr.jobs j
        INNER JOIN
    hr.employees e ON j.JOB_ID = e.JOB_ID
GROUP BY JOB_TITLE , MAX_SALARY , MIN_SALARY
ORDER BY j.MAX_SALARY - j.MIN_SALARY , JOB_TITLE;

SELECT * FROM hr.jobs;
SELECT * FROM hr.employees;
SELECT * FROM hr.departments;

SELECT 
    j.JOB_TITLE AS 'Cargo',
    (j.MAX_SALARY - j.MIN_SALARY) AS 'Variação Salarial',
    ROUND(MAX(e.SALARY)), 2) AS 'Média mínima mensal',

FROM
    hr.jobs j
        INNER JOIN
    hr.employees e ON j.JOB_ID = e.JOB_ID
GROUP BY JOB_TITLE , MAX_SALARY , MIN_SALARY
ORDER BY j.MAX_SALARY - j.MIN_SALARY , JOB_TITLE;