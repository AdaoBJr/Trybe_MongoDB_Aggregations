-- select * from hr.employees;
-- select * from hr.job_history;
-- Busquei aprender a usar o date_format nesse link: https://www.gigasystems.com.br/artigo/75/formatando-datas-no-mysql-com-date_format.
SELECT 
    CONCAT(e.First_name, ' ', e.last_name) AS 'Nome completo',
    DATE_FORMAT(jh.start_date, '%d/%m/%Y') AS 'Data de início',
    DATE_FORMAT(jh.end_date, '%d/%m/%Y') AS 'Data de recisão',
    ROUND((DATEDIFF(jh.end_date, jh.start_date) / 365), 2) AS 'Anos trabalhados'
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY CONCAT(e.First_name, ' ', e.last_name), ROUND((DATEDIFF(jh.end_date, jh.start_date) / 365), 2);
