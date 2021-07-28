select cou.COUNTRY_NAME as "País", 
if( reg.REGION_NAME = "Europe", "incluído", "não incluído")as "Status Inclusão"
from hr.countries as cou
inner join hr.regions reg
on cou.REGION_ID = reg.REGION_ID