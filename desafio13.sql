SELECT 
    P.productName AS Produto, P.price AS Preço
FROM
    w3schools.products AS P
        INNER JOIN
    w3schools.order_details AS O ON P.productID = O.productID
WHERE
    O.Quantity > 80
ORDER BY Produto;
