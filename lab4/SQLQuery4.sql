SELECT BillOfMaterials.ComponentID, 'Component'
FROM Production.BillOfMaterials
WHERE BillOfMaterials.ProductAssemblyID = 400

UNION

SELECT BillOfMaterials.ProductAssemblyID, 'Product'
FROM Production.BillOfMaterials
WHERE BillOfMaterials.ComponentID = 400
