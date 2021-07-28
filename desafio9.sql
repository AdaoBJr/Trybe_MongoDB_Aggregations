SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
    COUNT(*) AS  'Total de pedidos'
FROM
    employees AS e
WHERE
    EXISTS( SELECT 
            *
        FROM
            orders AS o
                INNER JOIN
            customers AS c ON o.CustomerID = c.CustomerID
        WHERE
            CONCAT(e.FirstName, ' ', e.LastName) = c.CustomerName);