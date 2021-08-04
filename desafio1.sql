SELECT
  country_name as 'País',
  if (region_id = 1, 'incluído', 'não incluído') as 'Status Inclusão'
FROM
  hr.countries
order by
  country_name ASC
