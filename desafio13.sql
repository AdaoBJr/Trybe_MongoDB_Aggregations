SELECT 
    p.ProductName AS Produto, p.Price AS Preço
FROM
    w3schools.products AS p
WHERE
    EXISTS( SELECT 
            *
        FROM
            w3schools.order_details AS o
        WHERE
            Quantity > 80
                AND p.ProductID = o.ProductID)
ORDER BY p.ProductName;
