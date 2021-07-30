SELECT Country   as "País" FROM w3schools.customers 
UNION      -- usa esse comando aqui
SELECT Country as "País" FROM w3schools.suppliers 
ORDER BY `País`ASC -- aqui PRECISA ser `País`. Tentei usar Country, mas não dava certo.
LIMIT 5;

-- Quero pegar a coluna de países das tabelas de Customers(pessoas clientes) e de suppliers(fornecedores)
-- Aí quero UNIR essa coluna que tá nas duas tabelas. Aí eu uso o comando UNION. Esse comando vai unir
-- os países que aparecem na coluna dessas 2 tabelas, PORÉM, ele já remove os países que se repetem aparecendo
-- nas duas tabelas. Por isso eu não preciso usar um comando DISTINCT.  Só usar o LIMIT 5. 
