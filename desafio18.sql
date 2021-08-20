-- conteudo feito com base no conteudo do link abaixo do stackoverflow
-- https://pt.stackoverflow.com/questions/17679/como-inserir-date-e-datetime-em-uma-tabela-no-mysql
SELECT 
CONCAT(employee.First_name, ' ', employee.last_name) AS 'Nome completo',
DATE_FORMAT(jhistory.start_date, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(jhistory.end_date, '%d/%m/%Y') AS 'Data de rescisão',
ROUND((DATEDIFF(jhistory.end_date, jhistory.start_date) / 365), 2) AS 'Anos trabalhados'
FROM hr.employees AS employee
INNER JOIN
hr.job_history AS jhistory ON employee.EMPLOYEE_ID = jhistory.EMPLOYEE_ID
ORDER BY `Nome completo` , `Anos trabalhados`;
