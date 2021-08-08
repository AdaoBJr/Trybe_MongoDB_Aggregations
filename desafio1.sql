SELECT 
	COUNTRY_NAME AS "País",
    IF(region_id = 1, "incluso", "não incluso") AS "Status Inclusão"
FROM countries;