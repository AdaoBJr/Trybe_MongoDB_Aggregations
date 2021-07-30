SELECT CONCAT(e.FirstName," ", e.LastName) as "Nome completo", COUNT(o.OrderID) as "Total de pedidos"
FROM w3schools.employees e inner join w3schools.orders o 
on e.EmployeeID = o.EmployeeID 
GROUP BY CONCAT(e.FirstName," ", e.LastName)
ORDER BY COUNT(o.OrderID);

-- Uso o COUNT(*) na ORDERS pq cada linha dessa tab. é um pedido. O EmployeeID nessa tab.mostra que cada pedido foi feito por algum funcionário de algum ID.
-- Por exemplo: mostra quantas vezes o funcionário de ID 5 fez pedido. Só que aparece de forma desorganizada.
-- Por isso tem que fazer o GROUP BY do Funcionário(por meio do NOME COMPLETO). Como usei o inner join, o mysql vai
-- entender que o funcionário de ID 5 se chama Steven Buchanan e que fez X números de pedidos. Aí o GROUP BY vai deixar os nomes dos funcionários
-- já organizados e vai dizer quantos pedidos cada funcionário fez.  Essa é a ideia
-- Resumão: Faço um count de total de pedidos e agrupo pelo Nome completo. Aí a resposta fica ok.
