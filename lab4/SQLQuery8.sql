SELECT FirstComponent.UnitMeasureCode, COUNT(*)
FROM Production.BillOfMaterials AS FirstComponent
JOIN Production.BillOfMaterials AS SecondComponent ON FirstComponent.BillOfMaterialsID = SecondComponent.BillOfMaterialsID
AND (FirstComponent.UnitMeasureCode = 'EA' OR FirstComponent.UnitMeasureCode = 'OZ')
GROUP BY FirstComponent.UnitMeasureCode
