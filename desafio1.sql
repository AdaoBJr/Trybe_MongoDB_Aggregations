SELECT c.country_name, 
IF
(
  c.region_id = (SELECT region_id  FROM hr.regions WHERE region_name = "europe"),
 "incluído",
 "não incluído"
 ) AS "Status Inclusão"
FROM hr.countries AS c;
