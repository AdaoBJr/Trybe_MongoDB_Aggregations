SELECT UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome Completo', HIRE_DATE as 'Data de início', SALARY as 'Salário'
FROM hr.employees
ORDER BY `Nome Completo`, HIRE_DATE;
