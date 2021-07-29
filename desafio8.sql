SELECT 
    table_customers.ContactName 'Nome de contato',
    table_shippers.ShipperName 'Empresa que fez o envio',
    table_orders.OrderDate 'Data do pedido'
FROM
    w3schools.customers table_customers
        INNER JOIN
    w3schools.orders table_orders ON table_customers.CustomerID = table_orders.CustomerID
        INNER JOIN
    w3schools.shippers table_shippers ON table_orders.ShipperID = table_shippers.ShipperID
WHERE
    table_orders.ShipperID IN (1 , 2)
ORDER BY table_customers.ContactName , table_shippers.ShipperName , table_orders.OrderDate;
