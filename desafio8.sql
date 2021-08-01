SELECT 
	cus.ContactName AS 'Nome de contato',
    shi.ShipperName AS 'Empresa que fez o envio',
    ord.OrderDate AS 'Data do pedido'
FROM
	w3schools.orders AS ord
		INNER JOIN
	customers AS cus ON cus.CustomerID = ord.CustomerID
		INNER JOIN
	shippers AS shi ON shi.ShipperID = ord.ShipperID
WHERE
	shi.ShipperName = 'Speedy Express' OR shi.ShipperName = 'United Package'
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
