-- select * from w3schools.products;
-- select sum(Quantity) from w3schools.order_details where productID = 1;
-- select * from w3schools.order_details where productID = 1;
SELECT 
    p.ProductName AS 'Produto', p.Price AS 'Preço'
FROM
    w3schools.products AS p
        INNER JOIN
    w3schools.order_details AS d ON p.productID = d.productID
WHERE
    d.quantity > 80
ORDER BY ProductName;
