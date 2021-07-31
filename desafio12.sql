select
concat(E1.FIRST_NAME, ' ', E1.LAST_NAME) as `Nome completo funcionário 1`,
E1.SALARY as `Salário funcionário 1`,
E1.PHONE_NUMBER as `Telefone funcionário 1`,

concat(E2.FIRST_NAME, ' ', E2.LAST_NAME) as `Nome completo funcionário 2`,
E2.SALARY as `Salário funcionário 2`,
E2.PHONE_NUMBER as `Telefone funcionário 2`
from hr.employees as E1, hr.employees as E2
where E1.JOB_ID = E2.JOB_ID and E1.EMPLOYEE_ID <> E2.EMPLOYEE_ID
group by `Nome completo funcionário 1`, `Nome completo funcionário 2`, E1.SALARY, E2.SALARY, E1.PHONE_NUMBER, E2.PHONE_NUMBER
order by `Nome completo funcionário 1`, `Nome completo funcionário 2`;
