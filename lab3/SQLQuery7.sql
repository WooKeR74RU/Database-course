SELECT Product.Class, AVG(Product.StandardCost)
FROM
Production.Product
WHERE Product.MakeFlag = 0 AND Product.Class IS NOT NULL
GROUP BY Product.Class
