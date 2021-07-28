select concat(ucase(funcionarios.first_name), ' ', ucase(funcionarios.last_name)) as 'Nome completo', inicio.start_date as 'Data de início', salary as 'Salário' from hr.employees as funcionarios inner join hr.job_history as inicio on inicio.EMPLOYEE_ID = funcionarios.EMPLOYEE_ID where month(inicio.start_date) in ('1', '2', '3') order by `Nome completo`, `Data de início`;