SELECT CONCAT(EM.FIRST_NAME,' ', EM.LAST_NAME) AS 'nome completo', JO.JOB_ID AS 'Cargo', EM.HIRE_DATE AS 'Data de início do cargo',
DE.DEPARTMENT_NAME AS 'Departamento' 
FROM hr.employees AS EM
INNER JOIN jobs AS JO
ON EM.JOB_ID = JO.JOB_ID
INNER JOIN departments AS DE
ON EM.DEPARTMENT_ID = DE.DEPARTMENT_ID
ORDER BY `Nome completo`, `Cargo` DESC;
