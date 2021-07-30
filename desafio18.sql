SELECT 
    concat(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
    date_format(START_DATE, '%d/%m/%y') AS 'Data de início',
    date_format(END_DATE, '%d/%m/%y') AS 'Data de rescisão',
    round((DATEDIFF(END_DATE, START_DATE))/(365), 2) as 'Anos trabalhados'
FROM
    job_history jh
inner join employees e
on jh.EMPLOYEE_ID = e.EMPLOYEE_ID
order by `Nome completo`, `Anos trabalhados`;
