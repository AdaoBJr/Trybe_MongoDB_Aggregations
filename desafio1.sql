SELECT  c.COUNTRY_NAME as País,
IF(c.REGION_ID = 1, "incluído", "não incluído")
as `Status Inclusão`
from hr.countries as c
INNER JOIN hr.regions as r
on c.REGION_ID = r.REGION_ID
ORDER BY c.COUNTRY_NAME;
