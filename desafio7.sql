SELECT 
UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) 'Nome completo', JH.START_DATE 'Data de início' , E.SALARY 'Salário'
FROM employees E INNER JOIN job_history JH ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID WHERE MONTH(JH.START_DATE) IN (1, 2, 3) ORDER BY `Nome completo`, `Data de início` ;
