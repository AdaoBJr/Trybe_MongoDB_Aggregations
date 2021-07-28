select
concat(FIRST_NAME, ' ', LAST_NAME) as 'Nome completo',
concat(if (length(day(jh.START_DATE)) = 1, concat('0',day(jh.START_DATE)), day(jh.START_DATE)),
'/',if (length(month(jh.START_DATE)) = 1, concat('0',month(jh.START_DATE)), month(jh.START_DATE)),
'/',year(jh.START_DATE)
) as 'Data de início',
concat(if (length(day(jh.END_DATE)) = 1, concat('0',day(jh.END_DATE)), day(jh.END_DATE)),
'/',if (length(month(jh.END_DATE)) = 1, concat('0',month(jh.END_DATE)), month(jh.END_DATE)),
'/',year(jh.END_DATE)
) as 'Data de rescisão',
round(datediff(jh.END_DATE, jh.START_DATE)/365, 2) as 'Anos trabalhados'
from employees e
inner join job_history jh on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
order by concat(FIRST_NAME, ' ', LAST_NAME), round((datediff(jh.END_DATE, jh.START_DATE)/30)/12, 2);
