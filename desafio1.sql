SELECT C.COUNTRY_NAME 'País', 
IF(R.REGION_NAME = 'Europe', 'incluso', 'não incluso') 'Status Inclusão' 
FROM hr.countries C
INNER JOIN hr.regions R
ON R.REGION_ID = C.REGION_ID
ORDER BY `País`;
