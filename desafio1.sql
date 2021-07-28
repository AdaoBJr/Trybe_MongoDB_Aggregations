-- Iniciando o projeto
# Exibe os países indicando se eles se encontram na região formada pela Europa

SELECT countri.COUNTRY_NAME AS País,
CASE WHEN region.REGION_NAME = 'Europe' THEN 'incluído'
ELSE 'não incluído'
END AS 'Status Inclusão' FROM hr.countries AS countri INNER JOIN hr.regions AS region
ON countri.REGION_ID = region.REGION_ID ORDER BY COUNTRY_NAME;
