SELECT  COUNTRY_NAME as 'País', CASE -- já usei o case no select
when REGION_ID=1 THEN 'incluído'
ELSE  'não incluído'
END AS 'Status Inclusão'
FROM hr.countries        -- ÚNICA tabela que usei........... não pode ter ; aqui pq senão dá erro no ORDER BY
ORDER BY COUNTRY_NAME;   -- essa ordenação só parou de dar erro quando botei no final. Antes eu tava tentando
-- botar ele na linha 1, como tinha feito no projeto de antes.
-- Não usei Inner Join aqui pq countries já tem oq precisava: nome dos países e a coluna REGION_ID.
