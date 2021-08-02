SELECT UPPER(CONCAT(e.FIRST_NAME,' ',e.LAST_NAME)) 'Nome completo', jh.START_DATE 'Data de início', e.SALARY 'Salário' FROM hr.job_history AS jh INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID WHERE MONTH(jh.START_DATE) >= (1) AND MONTH(jh.START_DATE) <= 3 ORDER BY `Nome Completo`, `Data de início`;
