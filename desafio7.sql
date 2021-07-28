select CONCAT(FIRST_NAME,' ', LAST_NAME) AS 'Nome completo', j.START_DATE as 'Data de início', SALARY as 'Salário' FROM hr.employees as emplo
inner join hr.job_history as j on emplo.EMPLOYEE_ID = j.EMPLOYEE_ID
where month(j.START_DATE) in (1, 2, 3)
order by `Nome Completo`, j.START_DATE;