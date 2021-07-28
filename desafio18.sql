select
concat(e.first_name, ' ', e.last_name) as `Nome completo`,
DATE_FORMAT(jh.start_date, "%d/%m/%Y") as 'Data de início', -- https://stackoverflow.com/questions/10637581/mysql-date-format-dd-mm-yyyy-select-query
DATE_FORMAT(jh.end_date, "%d/%m/%Y") as 'Data de rescisão', -- https://stackoverflow.com/questions/10637581/mysql-date-format-dd-mm-yyyy-select-query
round(datediff(jh.end_date, jh.start_date)/365, 2) as `Anos trabalhados`
from
hr.job_history as jh
inner join hr.employees as e on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
order by `Nome completo` asc, `Anos trabalhados` asc;
