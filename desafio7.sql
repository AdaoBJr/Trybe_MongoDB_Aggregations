SELECT
UPPER(CONCAT(e.FIRST_NAME, " ", e.LAST_NAME))  AS "Nome completo",
jh.START_DATE as "Data de início",
e.SALARY as "Salário"
from `hr`.`job_history` as jh
INNER JOIN `hr`.`employees` as e
on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
where month(jh.start_date) = 01
or month(jh.start_date) = 02
or month(jh.start_date) = 03
order by  `Nome completo`, `Data de início`;
