select COUNTRY_NAME as 'País',
case
	when REGION_ID = 3 then 'incluído'
    else 'não incluído'
    end as 'Status Inclusão'
from hr.countries 