
/*
1 - Exiba os países e indicando se cada um deles se encontra ou não na região formada pela Europa

Seu relatório deve apresentar 02 colunas:

  - A primeira deve possuir o alias "País" e exibir o nome do país.

  - A segunda deve possuir o alias "Status Inclusão" e deve exibir "incluído" se o país em questão está incluso em "Europe", ou "não incluído", caso contrário.

Os resultados devem estar ordenados pelo nome do país em ordem alfabética.

*/
SELECT c.COUNTRY_NAME 'País', IF(r.REGION_NAME = 'Europe', 'incluído', 'não incluído') 'Status Inclusão' FROM hr.countries c INNER JOIN hr.regions r ON r.REGION_ID = c.REGION_ID ORDER BY `País`;
