select concat(e.first_name, '', e.last_name) as "Nome completo",
j.job_title as Cargo,
jh.START_DATE as "Data de início do cargo",
d.DEPARTMENT_NAME as "Departamento"
from `hr`.`employees` as e
INNER JOIN `hr`.`job_history` as jh
on jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN `hr`.`jobs` as j
on j.JOB_ID = jh.JOB_ID
INNER JOIN `hr`.`departments` as d
on d.DEPARTMENT_ID = jh.DEPARTMENT_ID
order by  `Nome completo` desc, Cargo ASC;
