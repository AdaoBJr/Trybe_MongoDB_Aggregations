select COUNTRY_NAME as 'País', IF(REGION_ID = 1,'incluído', 'não incluído') as 'Status Inclusão' from countries
order by País;