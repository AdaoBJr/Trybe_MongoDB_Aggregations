-- SELECT * FROM w3schools.order_details;
-- SELECT * FROM w3schools.products;
-- SELECT * FROM w3schools.orders;

-- SELECT p.ProductName AS "Produto", MIN(od.Quantity) AS "Mínima"
-- FROM w3schools.products AS p
-- INNER JOIN w3schools.order_details AS od
-- ON p.ProductID = od.ProductID;
