select COUNTRY_NAME as 'País', if(region_id = 1, 'incluido', 'não incluido') as 'status de inclusão' from hr.countries;
-- commit um