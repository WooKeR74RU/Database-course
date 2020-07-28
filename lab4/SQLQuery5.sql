SELECT '36-37', BillOfMaterials.ProductAssemblyID
FROM Production.BillOfMaterials
GROUP BY BillOfMaterials.ProductAssemblyID
HAVING 36 <= COUNT(*) AND COUNT(*) <= 37

UNION

SELECT '38-40', BillOfMaterials.ProductAssemblyID
FROM Production.BillOfMaterials
GROUP BY BillOfMaterials.ProductAssemblyID
HAVING 38 <= COUNT(*) AND COUNT(*) <= 40
